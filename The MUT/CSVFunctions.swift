//
//  CSVFunctions.swift
//  The MUT
//
//  Created by Benjamin Whitis on 6/7/19.
//  Copyright © 2019 Levenick Enterprises LLC. All rights reserved.
//

import Foundation
import Cocoa

public class CSVManipulation {
    
    let downloadsURL = FileManager.default.urls(for: .downloadsDirectory, in: .userDomainMask).first?.appendingPathComponent("MUT Templates")
    let fileManager = FileManager.default

    func ExportCSV() {
        createDirectory()
        exportCSVReadme()
        exportUserCSV()
        exportComputerCSV()
        exportMobileDeviceCSV()
    }
    
    
    let usersCSV = "Username,Full Name,Email Address,Phone Number,Position,LDAP Server ID\n"
    
    let mobileDeviceCSV = "Display Name,Asset Tag,Username,Real Name,Email Address,Position,Phone Number,Department,Building,Room,PO Number,Vendor,PO Date,Warranty Expires,Lease Expires\n"
   
    let computerCSV = "Display Name,Asset Tag,Barcode 1,Barcode 2,Username,Real Name,Email Address,Position,Phone Number,Department,Building,Room,PO Number,Vendor,PO Date,Warranty Expires,Lease Expires\n"
    
    let CSVReadme = "Read this to learn how to use the MUT with Templates!"
    //sort out PO info ordering in CSV. Note Added to Trello
    //Sort out tvOS Airplay Password. Note Added to Trello
    
    func createDirectory(){
        if fileManager.fileExists(atPath: downloadsURL!.path) {
            NSLog("[INFO  ]: Template Directory already exists. Skipping creation.")
        } else {
            NSLog("[INFO  ]: Template Directory does not exist. Creating.")
            do {
                try FileManager.default.createDirectory(at: downloadsURL!, withIntermediateDirectories: true, attributes: nil)
            } catch {
                NSLog("[ERROR ]: An error occured while creating the Template Directory. \(error).")
            }
        }
    }

    func exportCSVReadme() {
        print("Starting CSVReadme")
        let readmeURL = downloadsURL?.appendingPathComponent("CSVReadme.txt")
        if fileManager.fileExists(atPath: readmeURL!.path) {
            NSLog("[INFO  ]: Readme file already exists. Skipping creation.")
        } else {
            NSLog("[INFO  ]: Readme file does not exist. Creating.")
            do {
                try CSVReadme.write(to: readmeURL!, atomically: false, encoding: .utf8)
            }
            catch {
                NSLog("[ERROR ]: An error occured while creating the Readme. \(error).")
            }
        }

    }
    
    func exportUserCSV() {

        print("Starting ExportUserCSV")
        let userURL = downloadsURL?.appendingPathComponent("UserTemplate.csv")
        if fileManager.fileExists(atPath: userURL!.path) {
            NSLog("[INFO  ]: User Template already exists. Skipping creation.")
        } else {
            NSLog("[INFO  ]: User Template does not exist. Creating.")
            do {
                try usersCSV.write(to: userURL!, atomically: false, encoding: .utf8)
            }
            catch {
                NSLog("[ERROR ]: An error occured while creating the User Template. \(error).")
            }
        }
    }
    
    func exportMobileDeviceCSV() {
        print("Starting MobileDeviceCSV")
        let mobileURL = downloadsURL?.appendingPathComponent("MobileDeviceTemplate.csv")
        if fileManager.fileExists(atPath: mobileURL!.path) {
            NSLog("[INFO  ]: Mobile Template already exists. Skipping creation.")
        } else {
            NSLog("[INFO  ]: Mobile Template does not exist. Creating.")
            do {
                try mobileDeviceCSV.write(to: mobileURL!, atomically: false, encoding: .utf8)
            }
            catch {
                NSLog("[ERROR ]: An error occured while creating the Mobile Template. \(error).")
            }
        }
    }

    func exportComputerCSV() {
        print("Starting ComputerCSV")
        let computerURL = downloadsURL?.appendingPathComponent("ComputerTemplate.csv")
        if fileManager.fileExists(atPath: computerURL!.path) {
            NSLog("[INFO  ]: Computer Template already exists. Skipping creation.")
        } else {
            NSLog("[INFO  ]: Computer Template does not exist. Creating.")
            do {
                try computerCSV.write(to: computerURL!, atomically: false, encoding: .utf8)
            }
            catch {
                NSLog("[ERROR ]: An error occured while creating the Computer Template. \(error).")
            }
        }
    }

}

    
    
    

