// SPDX-License-Identifier: MIT
pragma solidity > 0.4.2;

contract Election {
    // Model candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store account that have voted
    mapping (address => bool) public voters;
    // Store Candidates
    //Fetch Candidate
    mapping (uint => Candidate) public candidates;
    //Store candidate count
    uint public candidatesCount;

    //voted event
    event votedEvent (
        uint indexed _candidateId
    );

    constructor() {
        candidatesCount = 0;
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}