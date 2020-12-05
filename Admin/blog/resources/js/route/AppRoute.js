import React, {Component, Fragment} from 'react';
import {Route, Switch} from "react-router";
import HomePage from "../pages/HomePage";
import ContactPage from "../pages/ContactPage";
import ProjectsPage from "../pages/ProjectsPage";
import ServicesPage from "../pages/ServicesPage";
import ClientReviewPage from "../pages/ClientReviewPage";
import CoursesPage from "../pages/CoursesPage";

class AppRoute extends Component {
    render() {
        return (
            <Fragment>
                <Switch>
                    <Route exact path="/" component={HomePage}/>
                    <Route exact path="/contact" component={ContactPage}/>
                    <Route exact path="/project" component={ProjectsPage}/>
                    <Route exact path="/service" component={ServicesPage}/>
                    <Route exact path="/review" component={ClientReviewPage}/>
                    <Route exact path="/course" component={CoursesPage}/>
                </Switch>

            </Fragment>
        );
    }
}

export default AppRoute;
