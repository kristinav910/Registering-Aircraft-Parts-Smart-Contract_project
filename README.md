# Registering-Aircraft-Parts-Smart-Contract_project
## Project_3
This project is a smart contract that enables one to register aircraft parts on the blockchain using IFPS data storage. This allows for minimal gas usage when deploying and interacting with the contract while maintaining all relevant records for the respective parts. <br>
## Compiler
- Pragma Solidity 0.5.5
## Libraries Utilized
- Open Zeppelin ERC-721 Full
- Open Zeppelin Counters

## Contract Name
- PartRegistry

## Code Structure
Here is a screenshot showing the constructor, counters & contract variables 

![Code_struct](https://user-images.githubusercontent.com/70610967/110726938-30179f80-81cf-11eb-9466-488a5618140a.png)

The next section maps the registered parts and stores the relevant data in a parts list. Then the appraisal event allows for updates to the current value of the part <br>

![mapping-event](https://user-images.githubusercontent.com/70610967/110727035-5c332080-81cf-11eb-96d0-13752764815c.png)

## Functions
- Registering Parts

![register_parts](https://user-images.githubusercontent.com/70610967/110726988-4aea1400-81cf-11eb-935c-5c3732a8a5f6.png)

- New Appraisal

![new_appraisal](https://user-images.githubusercontent.com/70610967/110727080-6e14c380-81cf-11eb-88b5-33d6d8c0c585.png)



