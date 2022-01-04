import { api, LightningElement } from 'lwc';

export default class SelectedSizeColor extends LightningElement {
    @api size;
    @api color;
}