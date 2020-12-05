import React, {Component, Fragment} from 'react';
import Menu from "../components/Menu";
import BootstrapTable from 'react-bootstrap-table-next';
import paginationFactory from 'react-bootstrap-table2-paginator';
import Axios from "axios";
import {Button, Col, Container, Form, Modal, Row, Spinner} from "react-bootstrap";
import LoadingDiv from "../components/loadingDiv";
import WentWrong from "../components/wentWrong";
import ReactQuill from "react-quill";
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

class CoursesPage extends Component {

    constructor() {
        super();
        this.state={
            dataList:[],
            isLoading:true,
            isError:false,
            rowDataId:"",
            deleteBtnText:"Delete",
            AdNewModal:false,
            courseShortName:'',
            courseLongName:'',
            courseShortDes:'',
            courseLongDes:'',
            videoURL:'',
            courseSkill:'',
            courseLecture:'',
            courseStudent:'',
            courseLink:'',
            photo:'',
        }
        this.dataDelete = this.dataDelete.bind(this);
        this.imgCellFormat = this.imgCellFormat.bind(this);
        this.addNewModalOpen = this.addNewModalOpen.bind(this);
        this.addNewModalClose = this.addNewModalClose.bind(this);

        this.onShortNameChange=this.onShortNameChange.bind(this);
        this.onLongNameChange=this.onLongNameChange.bind(this);
        this.onShortDesChange=this.onShortDesChange.bind(this);
        this.onLongDesChange=this.onLongDesChange.bind(this);
        this.onCourseSkillChange=this.onCourseSkillChange.bind(this);
        this.onCourseLinkChange=this.onCourseLinkChange.bind(this);
        this.onVideoURLChange=this.onVideoURLChange.bind(this);
        this.onPhotoChange=this.onPhotoChange.bind(this);
        this.onCourseLectureChange=this.onCourseLectureChange.bind(this);
        this.onCourseStudentChange=this.onCourseStudentChange.bind(this);
        this.addFormSubmit=this.addFormSubmit.bind(this);
    }
    addNewModalOpen(){
        this.setState({AdNewModal:true});
    }

    addNewModalClose(){
        this.setState({AdNewModal:false});
    }

    ////////////////////////input data
    onShortNameChange(event){
        this.setState({courseShortName:event.target.value})
    }
    onLongNameChange(event){
        this.setState({courseLongName:event.target.value})
    }
    onShortDesChange(event){
        this.setState({courseShortDes:event.target.value})
    }
    onLongDesChange(event){
        this.setState({courseLongDes:event.target.value})
    }
    onCourseSkillChange(content, delta, source, editor){
        let htmlContent= editor.getHTML();
        this.setState({courseSkill:htmlContent})
    }
    onCourseLinkChange(event){
        this.setState({courseLink:event.target.value})
    }
    onVideoURLChange(event){
        this.setState({videoURL:event.target.value})
    }
    onPhotoChange(event){
        this.setState({photo:event.target.files[0]})
    }
    onCourseLectureChange(event){
        this.setState({courseLecture:event.target.value})
    }
    onCourseStudentChange(event){
        this.setState({courseStudent:event.target.value})
    }
    addFormSubmit(event){
        let courseShortName=this.state.courseShortName;
        let courseLongName=this.state.courseLongName;
        let courseShortDes=this.state.courseShortDes;
        let courseLongDes=this.state.courseLongDes;
        let courseSkill=this.state.courseSkill;
        let courseLink=this.state.courseLink;
        let videoURL=this.state.videoURL;
        let photo=this.state.photo;
        let courseLecture=this.state.courseLecture;
        let courseStudent=this.state.courseStudent;

        let myFormData=new FormData();
        myFormData.append('courseShortName',courseShortName);
        myFormData.append('courseLongName',courseLongName);
        myFormData.append('courseShortDes',courseShortDes);
        myFormData.append('courseLongDes',courseLongDes);
        myFormData.append('courseSkill',courseSkill);
        myFormData.append('courseLink',courseLink);
        myFormData.append('videoURL',videoURL);
        myFormData.append('photo',photo);
        myFormData.append('courseLecture',courseLecture);
        myFormData.append('courseStudent',courseStudent);

        let url="/AddCourse";
        let config={
            headers:{ 'content-type':'multipart/form-data'}
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
                this.componentDidMount();
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
    //////////////

    componentDidMount() {
        Axios.get('/CourseList').then((response)=>{
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
            Axios.post('/CourseDelete', {id:this.state.rowDataId}).then((response)=>{

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
                <Menu title="Courses">
                    <Container>
                        <LoadingDiv/>
                    </Container>
                </Menu>
            )
        }else if(this.state.isError==true){
            return(
                <Menu title="Courses">
                    <Container>
                        <WentWrong/>
                    </Container>
                </Menu>
            )
        } else{
            const data=this.state.dataList;

            const columns=[
                {dataField: 'id', text: 'ID'},
                {dataField: 'small_img', text: 'Image',formatter:this.imgCellFormat},
                {dataField: 'short_title', text: 'Course Title'},
                {dataField: 'short_des', text: 'Description'},
                {dataField: 'total_lecture', text: 'Total Lecture'},
                {dataField: 'total_student', text: 'Total Student'},
            ]

            const selectRow={
                mode:'radio',
                onSelect:(row,isSelect,rowIndex)=>{
                    this.setState({rowDataId:row['id']})
                }
            }
            return (
                <Fragment>
                    <Menu title="Courses">
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

                    <Modal scrollable={true} size="lg" show={this.state.AdNewModal} onHide={this.addNewModalClose}>
                        <Modal.Header closeButton>
                            <h6>Add New Course</h6>
                        </Modal.Header>
                        <Modal.Body>
                            <Form onSubmit={this.addFormSubmit}>
                                <Form.Group>
                                    <Form.Label>Course Short Title</Form.Label>
                                    <Form.Control onChange={this.onShortNameChange} type="text" placeholder="Course Short Title" />
                                </Form.Group>
                                <Form.Group>
                                    <Form.Label>Course Long Title</Form.Label>
                                    <Form.Control onChange={this.onLongNameChange} type="text" placeholder="Course Long Title" />
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Short Description</Form.Label>
                                    <Form.Control onChange={this.onShortDesChange} type="text" placeholder="Short Description" />
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Long Description</Form.Label>
                                    <Form.Control onChange={this.onLongDesChange} type="text" placeholder="Long Description" />
                                </Form.Group>
                                <Form.Group className="mb-5" >
                                    <Form.Label>Course Skills</Form.Label>
                                    <ReactQuill onChange={this.onCourseSkillChange} className="h-50" theme="snow"/>
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Course Total Students</Form.Label>
                                    <Form.Control onChange={this.onCourseStudentChange} type="text" placeholder="Course Total Students" />
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Course Total Lecture</Form.Label>
                                    <Form.Control onChange={this.onCourseLectureChange} type="text" placeholder="Course Total Lecture" />
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Course Link</Form.Label>
                                    <Form.Control onChange={this.onCourseLinkChange} type="text" placeholder="Course Link" />
                                </Form.Group>
                                <Form.Group >
                                    <Form.Label>Video URL</Form.Label>
                                    <Form.Control onChange={this.onVideoURLChange} type="text" placeholder="Video URL" />
                                </Form.Group>
                                <Form.Group>
                                    <Form.Label>Course Image</Form.Label>
                                    <Form.Control onChange={this.onPhotoChange} type="file" />
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

export default CoursesPage;
