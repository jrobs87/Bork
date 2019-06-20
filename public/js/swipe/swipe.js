$(document).ready(function () {

    // init Materialize js 
    $('.modal').modal(
        { dismissible: false }
    );

    // set up the liked dogs array card counter
    let dogsLiked = [];

    // populate dogs in modal after last card in stack is swiped
    function dogCollection(dogs) {
        for (i = 0; i < dogs.length; i++) {

            let li = $('<li>'); // line items for modal
            let a = $('<a>'); // text links for mmodal
            let divText = $('<div>'); // holder for dog name embedded in a tag

            let name = dogs[i].dog_name;
            let url = dogs[i].dog_url;

            li.addClass('collection-item')

            a.attr('href', url);
            a.attr('target', 'blank');

            divText.text(name);
            divText.addClass('divText');
            divText.addClass('qs');

            $(a).append(divText);
            $(li).append(a);
            $('.collection').append(li);
        }
        console.log('Liked dogs rendered in modal')
    }

    // get initial card count (refactor to jquery later)
    cardCount = document.getElementById("tinderList").childElementCount;
    console.log(`Card Stack loaded.  Total card count: ${cardCount}`);

    // update card count
    function cardCounter() {
        cardCount -= 1;  // reduces Card Count by 1 each time a card is swiped
        console.log(`New card count: ${cardCount}`);

        // Display modal summarizing liked dogs
        if (cardCount === 0) {
            dogCollection(dogsLiked); // loading dogs into modal before open (was located after modal open but caused weird animations)
            $('#modal1').modal('open'); // display matches modal

            console.log('Cards depleted!  Show results and send to server.');
        }
    }

    // Add dogs to array when liked
    function dogsLikedAdd(id, name, img, url) {
        let dogLikedAdd = {
            dog_id: id,
            dog_name: name,
            dog_img: img,
            dog_url: url
        }

        dogsLiked.push(dogLikedAdd);

        console.log(dogsLiked);
        console.log(dogLikedAdd)
    }

    $("#tinderslide").jTinder({
        onDislike: function (item) {

            // No action needed here - just logging dislike
            cardCounter();
        },
        onLike: function (item) {
            let dogID = item.data("id");
            let dogName = item.data("name");
            let dogIMG = item.data("img");
            let dogURL = item.data("url");

            dogsLikedAdd(dogID, dogName, dogIMG, dogURL);

            cardCounter();
        },
        // jTinder config
        animationRevertSpeed: 200,
        animationSpeed: 400,
        threshold: 1,
        likeSelector: '.like',
        dislikeSelector: '.dislike'
    });

    // Set button action to trigger jTinder like & dislike.
    $('.actions .like, .actions .dislike').click(function (e) {
        e.preventDefault();

        $("#tinderslide").jTinder($(this).attr('class'));
    });

    if ($('#tinderList').children().length === 0) {
        $('.actions').css('display', 'none');
        $('#tinderslide').text('Oh heck! No cards could be loaded. Return Home and click Get Started to try again.');
        // $('#tinderslide').text('Error: Check server status, and dB connection, then restart from Home page.');

        console.log('No cards loaded.');
    } else {
        console.log("Swipe page ready!");
    }
});
