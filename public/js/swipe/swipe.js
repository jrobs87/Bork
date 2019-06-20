$(document).ready(function () {

    // init Materialize js 
    $('.modal').modal(
        { dismissible: false }
    ); 

    console.log("Swiper ready!");

    // set up the liked dogs array card counter
    let dogsLiked = [];

    function dogCollection(dogs) {
        for (i = 0; i < dogs.length; i++) {
            let li = $('<li>');
            let name = dogs[i].dog_name;
            let img = dogs[i].dog_img;
            let url = dogs[i].dog_url;
    
            // let imgDiv = $('<img>');
            let a = $('<a>');
            let divText = $('<div>')

            li.addClass('collection-item')

            // imgDiv.attr('src', img);
            // imgDiv.addClass('collection-img')

            // a.text(name);
            a.attr('href', url);
            a.attr('target', 'blank');

            divText.text(name);
            divText.addClass('divText');
            divText.addClass('qs');

            // $(li).append(imgDiv);
            $(a).append(divText);
            $(li).append(a);
            $('.collection').append(li);

            console.log(name)

        }
    }

    cardCount = document.getElementById("tinderList").childElementCount;
    console.log(`Card Stack loaded.  Total card count: ${cardCount}`);

    function cardCounter() {
        // reduces Card Count by 1 each time a card is swiped
        cardCount -= 1;
        console.log(`New card count: ${cardCount}`);

        // Display modal, send POST request with ShortList, button or redirect to ShortList Page
        if (cardCount === 0) {
            console.log('Cards depleted!  Show results and send to server.');
            console.log(dogsLiked);
            $('#modal1').modal('open'); // display matches modal
            dogCollection(dogsLiked);
        }
    }

    function dogsLikedAdd(id, name, img, url) {
        let dogLikedAdd = {
            dog_id: id,
            dog_name: name,
            dog_img: img,
            dog_url: url
        };

        dogsLiked.push(dogLikedAdd);
        console.log(dogsLiked);
        console.log(dogLikedAdd)
    }

    $("#tinderslide").jTinder({
        onDislike: function (item) {
            let dogID = item.data("dog-id");
            let dogName = item.data("dog-name");

            cardCounter();

            // console.log('Dislike image ' + (item.index() + 1));
            // console.log(`Disliked ${dogName} - ID ${dogID}`);
        },
        onLike: function (item) {
            let dogID = item.data("id");
            let dogName = item.data("name");
            let dogIMG = item.data("img");
            let dogURL = item.data("url");

            dogsLikedAdd(dogID, dogName, dogIMG, dogURL);
            cardCounter();
            // console.log(dogID)

            // console.log('Like image ' + (item.index() + 1));
            // console.log(`Liked ${dogName} - ID ${dogID}`);
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

    // Reload the swiper page from modal button
    // $('#swipeRestart').on('click', function () {
    //     $('body').css('opacity', '0');
    //     setTimeout(function () {
    //         location.reload();
    //     }, 400)
    // });

});
