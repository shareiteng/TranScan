import React, { Component} from 'react'

import * as TranScanApi from '../../TranscanApi'



class SignIn extends Component{
  
    state = {
        email: '',
        password:''
      }
      handleChange = (e) => {
        this.setState({
          [e.target.id]: e.target.value
        })
        console.log(this.state);
      }
      hnadleLogin=(user)=> {
        return TranScanApi.login(user).then(response => {

          return response.data
        })
      }
        handleSubmit = (e) => {
        e.preventDefault();
        //this.props.signIn(this.state)
        //console.log(this.state);
        const user = {
          email: this.state.email,
          password: this.state.password
        }
       let a=this.hnadleLogin(user).then(response => {
        (response)? window.location.href ="/search":console.log("somethimg wrong");
         

      })
      console.log( a);
      
    }

       formInput = (input) => {
        if(this.state[input]==="")
          return (input);
       return "";
      }

    render() {
    
        return (

<form className="form" onSubmit={this.handleSubmit}>
                            <div className="input-field">
                                <label htmlFor="email">{this.formInput('email')}</label>
                                <input type="email" id='email' onChange={this.handleChange} />
                            </div>
                            
                            <div className="input-field">
                                <label id="password" htmlFor="password">{this.formInput('password')} </label>

                                <label htmlFor="password"></label>
                                <input type="password" id='password' onChange={this.handleChange} />
                            </div>
                            
                            <div className="input-field">
                                <button className="btn signBtn ">SignIn</button>
                        
                    </div>
                    </form>
        )
    
    }
}

// const mapStateToProps = (state) => {
//   return{
//     authError: state.auth.authError
//   }
// }

// const mapDispatchToProps = (dispatch) => {
//   return {
//     signIn: (creds) => dispatch(signIn(creds))
//   }
// }

export default 
//connect(mapStateToProps,mapDispatchToProps)
(SignIn)