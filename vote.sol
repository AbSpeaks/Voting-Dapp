pragma solidity ^0.8.0;
contract vote{

    string[] public candidtelist;
    string[] public voterlist;
    mapping(string=>string) voters;
    mapping(string=>uint256) candidates;

    function addCandidate(string memory candidate) public
    {
        require(candidates[candidate]== 0 ,"User already existed");
        candidtelist.push(candidate);
        candidates[candidate]=0;

    }

    function addVoter(string memory voterName) public
    {
        voterlist.push(voterName);
        voters[voterName];
    }



    function voted(string memory voterName , string memory candidate) public{

        require(candidates[candidate]>=0,"Invalid candidate");
        candidates[candidate]++;
        voters[candidate]=voterName;
    }

    function votefrom(string memory candidateName) public  view returns (string memory)
    {
        return voters[candidateName];
    }

    function totalvote(string memory candidate) public view  returns(uint256)
    {
        require(candidates[candidate]>=0,"Invalid candidate");
        return candidates[candidate];

    }

    function totlist() public view returns( string[] memory)
    {
        return candidtelist; 
    }

    function Votelist() public view returns ( string[] memory)
    {
        return voterlist;
    }

}
