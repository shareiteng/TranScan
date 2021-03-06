import React from 'react';
import SignUp from './components/auth/SignUp'
import Search from './components/shareItContent/search/Search'
import './App.css'
import NavigationBar from './components/layouts/NavigationBar';
import FooterCom from './components/layouts/FooterCom';
import { BrowserRouter, Switch, Route } from 'react-router-dom'
import NewDrive from './components/shareItContent/newDrive/NewDrive'
import Profile from './components/shareItContent/Profile';
import {isLogin} from './TranscanApi'
import LocalStorageService from './LocalStorageService';


function App() {
 //if(isLogin(LocalStorageService.getFromLocal("transanUserID")))
  return (
    <BrowserRouter>
            <div className="App">
              <NavigationBar/><br/><br/> <br/>
              <Switch>
                <Route exact path='/' component={SignUp}/>
                <Route path='/search' component={Search}/>
                <Route path='/new_drive' component={NewDrive}/>
                <Route path='/profile' component={Profile}/>
              </Switch>
              <FooterCom/>
            </div>
          </BrowserRouter>)
         
          ;

}


export default App;
