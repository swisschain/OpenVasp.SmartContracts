pragma solidity ^0.5.0;

import "@openzeppelin/upgrades/contracts/Initializable.sol";
import "@openzeppelin/contracts-ethereum-package/contracts/ownership/Ownable.sol";
import "../factory/IVaspFactory.sol";
import "../vasp/IVaspManager.sol";
import "../access/roles/IAdministratorRole.sol";

contract VaspBuilder is Initializable {

    IVaspManager _last;

    event VaspCreated(address indexed newVasp, address indexed owner);

    mapping (address => address) _lasts;

    IVaspFactory _factory;

    function initialize(
        address factory
    )
        public
        initializer
    {
        _factory = IVaspFactory(factory);
    }

    function Build
    (
        string memory name,
        string memory handshakeKey,
        string memory signingKey,
        string memory email,
        string memory website
    )     
        public
    {
        address vasp = _factory.creatVasp();

        IAdministratorRole admin = IAdministratorRole(vasp);
        admin.addAdministrator(address(this));

        IVaspManager last = IVaspManager(vasp);
        last.setName(name);
        last.setHandshakeKey(handshakeKey);
        last.setSigningKey(signingKey);

        last.setWebsite(website);
        last.setEmail(email);

        last.addChannel(0);

        Ownable own = Ownable(vasp);
        own.transferOwnership(msg.sender);

        _lasts[msg.sender] = vasp;

        emit VaspCreated(address(vasp), msg.sender);

    }

    function getLast(address owner) 
        public view
        returns (address)
    {
        return _lasts[owner];
    }

    function getFactory() 
        public view
        returns (address)
    {
        return address(_factory);
    }
}