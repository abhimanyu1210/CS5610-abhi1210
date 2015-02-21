app.factory('BuffetService', function buffetService() {
    var buffet = ['Burger', 'Pizza', 'Pasta', 'Noodles', 'Indian Parantha'];
    var foodItems = [];

    var getFood = function () {
        return buffet;
    }

    var addItem = function (item) {
        foodItems.push(item);
        buffet.splice(buffet.indexOf(item), 1);
    }

    var removeItem= function (item) {
        buffet.push(item);
        foodItems.splice(foodItems.indexOf(item), 1);
    }

    var getItems = function () {
        return foodItems;
    }

    return {
        getFood: getFood,
        addItem: addItem,
        removeItem: removeItem,
        getItems: getItems
    }
});