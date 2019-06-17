$(document).ready(function () {
    const survey = ['yard', 'otherPets', 'kids', 'size', 'sex'];
    let surveyAns = [];
    let data = {};

    $("#surveySubmit").click(function () {

        event.preventDefault()

        //capture all radio inputs
        for (i = 0; i < survey.length; i++) {
            // console.log(survey[i])
            var radioValue = $(`input[name='${survey[i]}']:checked`).val();
            if (radioValue) {
                surveyAns.push(radioValue);
            }
        }
        console.log(`User input: [${surveyAns}]`);
        console.log('Data ready to send.');
    });

// Confirm and Send data
    $('#confirm').on('click', function (data) {

        event.preventDefault()

        // AJAX call here
        data = {
            yard: surveyAns[0],
            otherPets: surveyAns[1],
            kids: surveyAns[2],
            size: surveyAns[3],
            sex: surveyAns[4]
        }

        url = '/api/survey';
        $.ajax({
            'url': url,
            'type': 'POST',
            'data': data,
            'success': function () {
                console.log('User Data sent to App');
                alert('Sweet!');
                window.open('/swiper',"_self"); // This can probably be handled server-side with response
            },
            'error': function (request, error) {
                alert("Request: " + JSON.stringify(request));
            }
        });
    });
});



//this js file saves all information to be rooted to other relevant servers
// let surveyAns = [];
// let registerInfo = [];

// $("#surveySubmit").on("click", function() {
//     event.preventDefault();
//     console.log('hi')


//     //survey answers
//     // const yard = document.survey.yard.value;
//     // const otherPets = document.survey.otherPets.value;
//     // const kids = document.survey.kids.value;
//     // const size = document.survey.size.value;
//     // const female = document.survey.female.value;


// // })

// $("#registerSubmit").on("click", function() {
//     //registration info
//     const firstName = document.getElementById("first-name");
//     const middleInit = document.getElementById("middle-name");
//     const lastName = document.getElementById("last-name");
//     const email = document.getElementById("email");
//     const streetAddy = document.getElementById("street-address");
//     const city = document.getElementById("city");
//     const state = document.getElementById("state");
//     const zip = document.getElementById("zip-code");
//     const pass = document.getElementById("password");
//     const confirmPass = document.getElementById("confirm-password");

// })


// THIS WORKS _ DONT TOUCH
// $(document).ready(function(){
//     const survey = ['yard', 'otherPets', 'kids', 'size', 'female'];
//     $("#surveySubmit").click(function(){
//         var radioValue = $("input[name='size']:checked").val();
//         if(radioValue){
//             alert("Your are a - " + radioValue);
//         }
//     });
// });


