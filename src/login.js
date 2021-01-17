import React from 'react';
import './login.css';

class LoginContainer extends React.Component{
    render() {
        return(
            <div className={'authBox'}>
                <div className={'leftBox'}>
                    <div className={'bgGreen'} />
                    <div className={'imageAuth'}></div>
                    <div className={'imageText'}>Codewhatever</div>
                    <div className={'imageText'}> Build your business online</div>
                </div>
                <div className={'rightBox'}>
                    <div className={'box'}></div>
                </div>
            </div>
        )
    }
}

export default LoginContainer;