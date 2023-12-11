# clean architecture

A new Flutter project created with FlutLab - https://flutlab.io

## Getting Started

A few resources to get you started if this is your first Flutter project:

- https://flutter.dev/docs/get-started/codelab
- https://flutter.dev/docs/cookbook

For help getting started with Flutter, view our
https://flutter.dev/docs, which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Getting Started: FlutLab - Flutter Online IDE

- How to use FlutLab? Please, view our https://flutlab.io/docs
- Join the discussion and conversation on https://flutlab.io/residents

## How basically the clean architecture work
- first we have our code in the 3 main files
    - data
        - dataSource and dataSourceImpl              --------------> here we first make the abstract class and then impl it to hit the actual API
        - models                                                     --------------> this is the model of api response but extend to the entity in domain layer to avoid the complier complain about the data type mismatch
        - repoImpl                                                  --------------> This is the repo of the domain layer that we implement in the data layer for this we use the dataSource to call the methods
    - domain
        - entity                                                       -------------->This is the entity that we want to use in our UI this is self made                                         
        - repo                                                         -------------->This is the abstract class that has the required methods that are required
        - usecases                                                  --------------> This uses the repo to call the methods and this is used  by the controller to communicate to the API
    - presentation
         - controller
         - UI
    - and we also have other common folders like API const url comman exception and widgets
 The implementation starts from the very basic layer of the code i.e  **presentation** layer.
 In presentation layer we have 2 files one is for our UI and second one is the controller file like GetxController
 MAIN STORY STARTS FROM HERE
 GetxController have the functions to call the basic functions , these GetxController have the **usecases** 
