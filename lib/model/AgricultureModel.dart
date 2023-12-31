

class AgricultureModel{
  String id;
  String buyerDocId="";
String typesCrops="";
String workType="";
String areaType="";
String range="";
String auctionType="";
String setBidPrice="";
String setBidEndTime="";
String cityName="";
String completeAddress="";
String description="";
String status="";



AgricultureModel({this.id,this.buyerDocId,this.typesCrops,this.workType,this.areaType,this.range,this.auctionType,this.setBidPrice
,this.setBidEndTime,this.cityName,this.completeAddress,this.description,this.status});


  factory  AgricultureModel.fromFirestore(Map<String, dynamic> data) {
    return AgricultureModel(

      id: data['id'] ??"",
      buyerDocId: data['buyerDocId'] ??"",
      typesCrops:data['typesCrops'] ??"",
      workType:data['workType']??"",
      areaType:data['areaType']??"",
      range:data['range']??"",
      auctionType:data['auctionType']??"",
      setBidPrice:data['setBidPrice']??"",
      setBidEndTime:data['setBidEndTime']??"",
      cityName:data['cityName']??"",
      completeAddress:data['completeAddress']??"",
      description:data['description']??"",
      status:data['status']??"",



    );
  }



}