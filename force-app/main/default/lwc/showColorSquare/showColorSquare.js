import { LightningElement, wire } from 'lwc';
import { CurrentPageReference } from 'lightning/navigation';
import { registerListener } from 'c/pubsub';

export default class ShowColorSquare extends LightningElement {
    color = 'white';
    size = 100;

    @wire(CurrentPageReference) pageRef;

    get getStyle() {
        return 'height:' + this.size + 'px; width:' + this.size + 'px; background-color:' + this.color;
    }

    connectedCallback() {
        registerListener('sizeChanged', this.onSizeChanged, this);
        registerListener('colorChanged', this.onColorChanged, this);
    }

    onSizeChanged(event) {
        this.size = event.detail;
    }

    onColorChanged(event) {
        this.color = event.detail;
    }
}