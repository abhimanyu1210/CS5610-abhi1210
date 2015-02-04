function main() {
    // Show alert box with a message
    this.alert('You can see this message because there was an alert statement in javascript on document load!!');
};

// Change Text Using Javascript
function getOriginalText() {
    var changeTextId = document.getElementById('changeText');
    changeTextId.innerHTML = 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?';
    
};

function translateText() {
    var textHolderId = document.getElementById('changeText');
    textHolderId.innerHTML = 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?';
};


// Change CSS Using JavaScript
function randomColorGenerator() {
    var hashTag = '#';
    var randomNum = Math.random().toString(16).slice(2, 8);

    return hashTag + randomNum;
};

function changeColor() {
    var textHolder = document.getElementById('changeColor');
    textHolder.style.color = randomColorGenerator();
};

// Adding and subtracting Using 
function operator(btn_clicked) {
    var numId = document.getElementById('numberId');
    var numVal = numId.value;

    if (numVal === '' || isNaN(numVal)) {
        this.alert('Operation Failed Due To Incorrect Input')
    } else {
        if (btn_clicked === 'addBtn') {
            numVal++;
        }
        else if (btn_clicked === 'subtractBtn') {
            numVal--;
        }

        numId.value = numVal;
    }
}

// Validate Number
function validateIfEven() {
    var numInput = document.getElementById('inputTxt').value;
    var resultId = document.getElementById('resultId');

    var result='';
    if (numInput === '' || isNaN(numInput)) {
        result = 'Please Enter A Number!!';
    } else {
        if (numInput % 2 === 0) {
            result = 'Validation Successful!!';
            resultId.style.color = 'Green';
        }
        else {
            result = 'Validation Failed!!';
            resultId.style.color = 'Red';
        }
    }

    resultId.innerHTML = result;
};


document.onload(main());