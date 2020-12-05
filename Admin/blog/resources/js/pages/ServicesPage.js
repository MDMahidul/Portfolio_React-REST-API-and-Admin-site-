import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import BootstrapTable from 'react-bootstrap-table-next';
import paginationFactory from 'react-bootstrap-table2-paginator';
import Axios from "axios";
import {Button, Col, Container, Form, Modal, Row, Spinner} from "react-bootstrap";
import LoadingDiv from "../components/loadingDiv";
import WentWrong from "../components/wentWrong";
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class ServicesPage extends Component {

    constructor() {
        super();
        this.state={
            dataList:[],
            isLoading:true,
            isError:false,
            rowDataId:"",
            deleteBtnText:"Delete",
            AdNewModal:false,
            addTitle:'',
            addDes:'',
            addFile:'',
        }
        this.dataDelete = this.dataDelete.bind(this);
        this.imgCellFormat = this.imgCellFormat.bind(this);
        this.addNewModalOpen = this.addNewModalOpen.bind(this);
        this.addNewModalClose = this.addNewModalClose.bind(this);

        this.titleOnChange=this.titleOnChange.bind(this);
        this.desOnChange=this.desOnChange.bind(this);
        this.fileOnChange=this.fileOnChange.bind(this);
        this.addFormSubmit=this.addFormSubmit.bind(this);
    }

    addNewModalOpen(){
        this.setState({AdNewModal:true});
    }

    addNewModalClose(){
        this.setState({AdNewModal:false});
    }

    //form data pull
    titleOnChange(event){
        this.setState({addTitle:event.target.value});
    }

    desOnChange(event){
        this.setState({addDes:event.target.value});
    }

    fileOnChange(event){
        this.setState({addFile:event.target.files[0]});
    }

    addFormSubmit(event){
        let title=this.state.addTitle;
        let des=this.state.addDes;
        let photo=this.state.addFile;

        let url="/AddService";
        let myFormData=new FormData();
        myFormData.append('title',title);
        myFormData.append('des',des);
        myFormData.append('photo',photo);

        let config={
            headers:{'content-type':'multipart/form-data'}
        }

        Axios.post(url,myFormData,config).then((response)=>{
            if(response.data==1){
                toast.success('Data Inserted Successfully', {
                    position: "bottom-center",
                    autoClose: 3000,
                    hideProgressBar: false,
                    closeOnClick: true,
                    pauseOnHover: false,
                    draggable: true,
                    progress: 0,
                });
                this.addNewModalClose();
                this.componentDidMount()
            }else{
                toast.error('Data Insert Failed', {
                    position: "bottom-center",
                    autoClose: 3000,
                    hideProgressBar: false,
                    closeOnClick: true,
                    pauseOnHover: false,
                    draggable: true,
                    progress: 0,
                });
            }
        }).catch((error)=>{
            toast.error('Data Insert Failed', {
                position: "bottom-center",
                autoClose: 3000,
                hideProgressBar: false,
                closeOnClick: true,
                pauseOnHover: false,
                draggable: true,
                progress: 0,
            });
        })

        event.preventDefault();
    }

    componentDidMount() {
        Axios.get('/ServiceList').then((response)=>{
            if(response.status==200){
                this.setState({dataList:response.data,isLoading:false,isError:false})
            }else{
                this.setState({isLoading:false,isError:true})
            }

        }).catch((error)=>{
            this.setState({isLoading:false,isError:true})
        })
    }

    dataDelete(){

        let confirmResult=confirm("do you want to delete ?")
        if(confirmResult == true){

            this.setState({deleteBtnText:"Deleting..."})
            Axios.post('/ServiceDelete', {id:this.state.rowDataId}).then((response)=>{

                if(response.data == 1 && response.status == 200){
                    toast.success('Delete Success', {
                        position: "bottom-center",
                        autoClose: 3000,
                        hideProgressBar: false,
                        closeOnClick: true,
                        pauseOnHover: false,
                        draggable: true,
                        progress: 0,
                    });
                    this.setState({deleteBtnText:"Delete"})
                    this.componentDidMount()
                }else{
                    this.setState({deleteBtnText:"Delete"})
                    toast.error('Delete Failed', {
                        position: "bottom-center",
                        autoClose: 3000,
                        hideProgressBar: false,
                        closeOnClick: true,
                        pauseOnHover: false,
                        draggable: true,
                        progress: 0,
                    });
                }

            }).catch((error)=>{
                this.setState({deleteBtnText:"Delete"})
                toast.error('Delete Failed', {
                    position: "bottom-center",
                    autoClose: 3000,
                    hideProgressBar: false,
                    closeOnClick: true,
                    pauseOnHover: false,
                    draggable: true,
                    progress: 0,
                });
            })
        }
    }

    imgCellFormat(cell,row){
        return(
            <img className="table-cell-img" src={cell}/>
        )
    }

    render() {

        if(this.state.isLoading==true){
            return(
                <Menu title="Services">
                    <Container>
                        <LoadingDiv/>
                    </Container>
                </Menu>
            )
        }else if(this.state.isError==true){
            return(
                <Menu title="Services">
                    <Container>
                        <WentWrong/>
                    </Container>
                </Menu>
            )
        } else{
            const data=this.state.dataList;

            const columns=[
                {dataField: 'id', text: 'ID'},
                {dataField: 'service_logo', text: 'Image',formatter:this.imgCellFormat},
                {dataField: 'service_name', text: 'Service Name'},
                {dataField: 'service_description', text: 'Description'},
            ]

            const selectRow={
                mode:'radio',
                onSelect:(row,isSelect,rowIndex)=>{
                    this.setState({rowDataId:row['id']})
                }
            }
            return (
                <Fragment>
                    <Menu title="Services">
                        <Container>
                            <Row>
                                <Col lg={12} md={12} sm={12}>
                                    <button onClick={this.dataDelete} className="normal-btn my-2 btn">{this.state.deleteBtnText}</button>
                                    <button onClick={this.addNewModalOpen} className="normal-btn ml-2  my-2 btn">Add New</button>
                                    <BootstrapTable
                                        keyField='id'
                                        data={ data }
                                        columns={ columns }
                                        selectRow={selectRow}
                                        pagination={ paginationFactory() } >
                                    </BootstrapTable>
                                </Col>
                            </Row>
                            <ToastContainer
                                position="bottom-center"
                                autoClose={3000}
                                hideProgressBar={false}
                                newestOnTop={false}
                                closeOnClick
                                rtl={false}
                                pauseOnFocusLoss={false}
                                draggable
                                pauseOnHover={false}
                            />
                        </Container>
                    </Menu>

                    <Modal show={this.state.AdNewModal} onHide={this.addNewModalClose}>
                        <Modal.Header closeButton>
                            <h6>Add New Service</h6>
                        </Modal.Header>
                        <Modal.Body>
                            <Form onSubmit={this.addFormSubmit}>
                                <Form.Group>
                                    <Form.Label>Service Title</Form.Label>
                                    <Form.Control onChange={this.titleOnChange} type="text" placeholder="Service" />
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Service Description</Form.Label>
                                    <Form.Control onChange={this.desOnChange} type="text" placeholder="Service Description" />
                                </Form.Group>
                                <Form.Group>
                                    <Form.Label>Service Logo</Form.Label>
                                    <Form.Control onChange={this.fileOnChange} type="file" placeholder="Service Logo" />
                                </Form.Group>
                                <Button variant="primary" type="submit">
                                    Submit
                                </Button>
                          </Form>
                        </Modal.Body>
                        <Modal.Footer>
                            <Button variant="secondary" onClick={this.addNewModalClose}>
                                Close
                            </Button>
                        </Modal.Footer>
                    </Modal>
                </Fragment>
            );
        }
    }
}

export default ServicesPage;