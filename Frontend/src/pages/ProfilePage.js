import React, { useState } from 'react';
import UserInfo from '../components/User/UserInfo';
import Logout from '../components/User/Logout';
import DeleteAccount from '../components/User/DeleteAccount';
import CustomAlert from '../components/CustomAlert'; // Importe o componente CustomAlert
import { useAuth } from '../contexts/AuthContext';
import { FaLock } from 'react-icons/fa'; // Importe o ícone de cadeado

const ProfilePage = () => {
  const { authCookie } = useAuth();
  const [isLoggedOut, setIsLoggedOut] = useState(false);
  const [deleteSuccess, setDeleteSuccess] = useState(false); // Estado para indicar se a conta foi excluída com sucesso

  const handleLogout = () => {
    setIsLoggedOut(true);
  };

  const handleDeleteAccount = () => {
    setIsLoggedOut(true);
    setDeleteSuccess(true); // Define deleteSuccess como verdadeiro ao excluir a conta
  };

  return (
    <div className="page-container">
      <h1>Profile Page</h1>
      <p>This is the Profile page content.</p>
      {!authCookie && (
        <div style={{ textAlign: 'center' }}>
          <p style={{ color: 'black', fontWeight: 'bold' }}>
            <FaLock style={{ marginTop: '10%' }} /> Esta área é permitida apenas para usuários.
          </p>
        </div>
      )}
      {authCookie && !isLoggedOut && (
        <React.Fragment>
          <UserInfo isLoggedOut={isLoggedOut} />
          <Logout onLogout={handleLogout} />
          <DeleteAccount onDelete={handleDeleteAccount} />
        </React.Fragment>
      )}
      {/* Renderize o CustomAlert após o logout */}
      {isLoggedOut && (
        <CustomAlert message="Logout bem-sucedido" type="success" onClose={() => setIsLoggedOut(false)} />
      )}
      {/* Renderize o CustomAlert após excluir a conta */}
      {deleteSuccess && (
        <CustomAlert
          message="Conta excluída com sucesso"
          type="success"
          onClose={() => setDeleteSuccess(false)}
        />
      )}
    </div>
  );
};

export default ProfilePage;
