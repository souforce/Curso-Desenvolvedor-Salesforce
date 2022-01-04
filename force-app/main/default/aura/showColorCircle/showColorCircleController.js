({
    handleInit: function (component, event, helper) {
        let pubsub = component.find('pubsub');

        let colorChanged = $A.getCallback(function (message) {
            let color = message.detail;
            let size = component.get('v.size');

            component.set('v.color', color);
            component.set('v.style', 'height:' + size + 'px; width:' + size + 'px; background-color:' + color);

            window.console.log(message);
        });

        let sizeChanged = $A.getCallback(function (message) {
            let size = message.detail;
            let color = component.get('v.color');

            component.set('v.size', size);
            component.set('v.style', 'height:' + size + 'px; width:' + size + 'px; background-color:' + color);
            window.console.log(message);
        });

        pubsub.registerListener('colorChanged', colorChanged);
        pubsub.registerListener('sizeChanged', sizeChanged);

        //Initialize with default values
        let size = component.get('v.size');
        let color = component.get('v.color');
        component.set('v.style', 'height:' + size + 'px; width:' + size + 'px; background-color:' + color);
    },

    reset: function (component, event, helper) {
        let pubsub = component.find('pubsub');
        pubsub.fireEvent('reset', { detail: 'reset it!' });
    }
})
