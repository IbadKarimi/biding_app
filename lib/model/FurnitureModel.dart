

class FurnitureModel{
  String buyerDocId="";
  String makingMaterial="";
  String condition="";
  String selectType="";
  String auctionType="";
  String setBidPrice="";
  String setBidEndTime="";
  String cityName="";
  String completeAddress="";
  String description="";
  String status="";

  FurnitureModel({this.buyerDocId,this.makingMaterial,this.condition,this.selectType,this.auctionType,this.setBidPrice,this.setBidEndTime,
  this.cityName,this.completeAddress,this.description,this.status});

  factory  FurnitureModel.fromFirestore(Map<String, dynamic> data) {
    return FurnitureModel(


      buyerDocId: data['buyerDocId'] ??"",
      makingMaterial:data['makingMaterial'] ??"",
      condition:data['condition']??"",
      selectType:data['selectType']??"",
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