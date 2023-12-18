import ballerina/log;
import ballerina/time;

public type Information record {
    string infoId;
    string location;
    string description;
};

public type Education record {
    string educationType;
    Certificate certificates;
};

public type Certificate record {
    string name;
    string description;
};

public type User record {
    string id;
    string name;
    Education education;
    Information info;
};

configurable time:Date date = ?;
configurable User user = ?;
configurable string message = "Hello";

public function main() {
    string welcomeMsg = "Hello World!, date" + date.toBalString();
    log:printInfo(welcomeMsg);
}
