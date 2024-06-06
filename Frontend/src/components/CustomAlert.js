// CustomAlert.js

import React, { useEffect } from 'react';
import '../styles/CustomAlert.css'; // Importe o arquivo CSS para estilização

const CustomAlert = ({ message, onClose }) => {
    useEffect(() => {
        let timer;
        if (message) {
            timer = setTimeout(() => {
                onClose();
            }, 2000);
        }

        return () => clearTimeout(timer);
    }, [message, onClose]);

    return (
        <>
            {message && (
                <div className="custom-alert">
                    <span>{message}</span>
                    <button onClick={onClose}>X</button>
                </div>
            )}
        </>
    );
};

export default CustomAlert;