import React from 'react';
import './loginPage.css';

function Login(props){
    return(
        <div className={'box'}>
            <div className={'titleAuth'}>Connexion à Cloneflix</div>
            <div className={'inputSBox'}>
                <input className={'inputS'} type={'text'} placeholder={'Pseudo'} />
            </div>
            <div className={'inputSBox'}>
                <input className={'inputS'} type={'password'} placeholder={'Mot de passe'} />
            </div>
            <div className={'contentBox'}>
                <div className={'text'} onClick={props.onClick}>Créer un compte</div>
            </div>
            <button className={'btnAuth'}>Connexion</button>
        </div>
    );
}

function CreateAccount(props){
    return(
        <div className={'box'}>
            <div className={'titleAuth'}>Créer un compte Cloneflix</div>
            <div className={'inputSBox'}>
                <input className={'inputS'} type={'text'} placeholder={'Pseudo'} />
            </div>
            <div className={'inputSBox'}>
                <input className={'inputS'} type={'password'} placeholder={'Mot de passe'} />
            </div>
            <div className={'inputSBox'}>
                <input className={'inputS'} type={'password'} placeholder={'Confirmer le mot de passe'} />
            </div>
            <div className={'contentBox'}>
                <div className={'text'} onClick={props.onClick}>Se connecter</div>
            </div>
            <button className={'btnAuth'}>Créer un compte</button>
        </div>
    );
}

class LoginPage extends React.Component{
    constructor(props){
        super(props);
        this.handleLoginClick = this.handleLoginClick.bind(this);
        this.handleCreateClick = this.handleCreateClick.bind(this);
        this.state = {page: true};
    }

    handleLoginClick(){
        this.setState({page: false});
    }
    handleCreateClick(){
        this.setState({page: true});
    }

    render(){
        let display;
        const page = this.state.page;
        if(page){
            display = <Login onClick={this.handleLoginClick} />;
        }
        else{
            display = <CreateAccount onClick={this.handleCreateClick} />;
        }
        return(
            <div className={'authBox'}>
                <div className={'leftBox'}>
                    <div className={'bgGreen'} />
                    <div className={'imageAuth'} />
                    <div className={'imageText bold style1'}>Cloneflix</div>
                    <div className={'imageText style2'}>Stream what you want</div>
                </div>
                <div className={'rightBox'}>
                    {display}
                </div>
            </div>
        )
    }
}

export default LoginPage;