$(document).ready(function () {

    const survey = ['yard', 'otherPets', 'kids', 'size', 'female'];
    let surveyAns = [];
    let data = {};

    // Collect and send user survey data to server
    $("#surveySubmit").on('click', function () {

        event.preventDefault()

        //capture all radio inputs
        for (i = 0; i < survey.length; i++) {
            // console.log(survey[i])
            var radioValue = $(`input[name='${survey[i]}']:checked`).val();
            if (radioValue) {
                surveyAns.push(radioValue);
            }
        }

        sendData();
    });

    // Send data to server
    function sendData() {

        // Get user data for POST
        data = {
            yard: surveyAns[0],
            other_pets: surveyAns[1],
            kids: surveyAns[2],
            size: surveyAns[3],
            female: surveyAns[4]
        }

        // AJAX call here
        url = '/api/survey';
        $.ajax({
            'url': url,
            'type': 'POST',
            'data': data,
            'success': function () {
                console.log('User Data sent to App');
                window.open('/swiper', "_self"); // This can probably be handled server-side with response
            },
            'error': function (request, error) {
                alert("Request: " + JSON.stringify(request));
            }
        })
    }
})




