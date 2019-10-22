
import React, {Component} from 'react'
import Modal from 'react-bootstrap/Modal'
import Button from 'react-bootstrap/Button'
import Aa from './Aa'

class Modala extends Component{
    constructor(props, context) {
        super(props, context);
    
    this.handleShow = this.handleShow.bind(this);
    this.handleClose = this.handleClose.bind(this);

    this.state = {
      show: false,
    };
  }

  handleClose() {
    this.setState({ show: false });
  }

  handleShow() {
    this.setState({ show: true });
  }

    render(){
        
        return (
            <>
                <Button  onClick={this.handleShow}  type="button" variant="secondary" size="lg" block >}
                    Find me the best ride
                </Button> 
                

                <Modal
                    show={this.state.show} 
                    onHide={this.handleClose}
                    dialogClassName="modal-90w"
                    aria-labelledby="example-custom-modal-styling-title"
                >
                <Modal.Header closeButton>
                    <Modal.Title id="example-custom-modal-styling-title">
                    My Ride
                    </Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Aa></Aa>
                </Modal.Body>
                </Modal>
            </>
  );
}
}
export default Modala