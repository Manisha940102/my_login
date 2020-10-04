class Objects {
  Department department;
  SalesOwner salesOwner;

  Objects({this.department, this.salesOwner});

  Objects.fromJson(Map<String, dynamic> json) {
    department = json['Department'] != null
        ? new Department.fromJson(json['Department'])
        : null;
    salesOwner = json['SalesOwner'] != null
        ? new SalesOwner.fromJson(json['SalesOwner'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.department != null) {
      data['Department'] = this.department.toJson();
    }
    if (this.salesOwner != null) {
      data['SalesOwner'] = this.salesOwner.toJson();
    }
    return data;
  }
}

class Department {
  SCR sCR;
  SCR fAB;
  ILL iLL;
  SCR oFF;
  SCR tHE;
  ILL cS;
  ILL sD;
  SCR rEF;
  SCR mA;
  SCR hET;
  ILL mD;
  ILL sL;
  SCR eMB;
  ILL dA;
  ILL yW;
  SCR wOV;
  ILL other;

  Department(
      {this.sCR,
      this.fAB,
      this.iLL,
      this.oFF,
      this.tHE,
      this.cS,
      this.sD,
      this.rEF,
      this.mA,
      this.hET,
      this.mD,
      this.sL,
      this.eMB,
      this.dA,
      this.yW,
      this.wOV,
      this.other});

  Department.fromJson(Map<String, dynamic> json) {
    sCR = json['SCR'] != null ? new SCR.fromJson(json['SCR']) : null;
    fAB = json['FAB'] != null ? new SCR.fromJson(json['FAB']) : null;
    iLL = json['ILL'] != null ? new ILL.fromJson(json['ILL']) : null;
    oFF = json['OFF'] != null ? new SCR.fromJson(json['OFF']) : null;
    tHE = json['THE'] != null ? new SCR.fromJson(json['THE']) : null;
    cS = json['CS'] != null ? new ILL.fromJson(json['CS']) : null;
    sD = json['SD'] != null ? new ILL.fromJson(json['SD']) : null;
    rEF = json['REF'] != null ? new SCR.fromJson(json['REF']) : null;
    mA = json['MA'] != null ? new SCR.fromJson(json['MA']) : null;
    hET = json['HET'] != null ? new SCR.fromJson(json['HET']) : null;
    mD = json['MD'] != null ? new ILL.fromJson(json['MD']) : null;
    sL = json['SL'] != null ? new ILL.fromJson(json['SL']) : null;
    eMB = json['EMB'] != null ? new SCR.fromJson(json['EMB']) : null;
    dA = json['DA'] != null ? new ILL.fromJson(json['DA']) : null;
    yW = json['YW'] != null ? new ILL.fromJson(json['YW']) : null;
    wOV = json['WOV'] != null ? new SCR.fromJson(json['WOV']) : null;
    other = json['Other'] != null ? new ILL.fromJson(json['Other']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sCR != null) {
      data['SCR'] = this.sCR.toJson();
    }
    if (this.fAB != null) {
      data['FAB'] = this.fAB.toJson();
    }
    if (this.iLL != null) {
      data['ILL'] = this.iLL.toJson();
    }
    if (this.oFF != null) {
      data['OFF'] = this.oFF.toJson();
    }
    if (this.tHE != null) {
      data['THE'] = this.tHE.toJson();
    }
    if (this.cS != null) {
      data['CS'] = this.cS.toJson();
    }
    if (this.sD != null) {
      data['SD'] = this.sD.toJson();
    }
    if (this.rEF != null) {
      data['REF'] = this.rEF.toJson();
    }
    if (this.mA != null) {
      data['MA'] = this.mA.toJson();
    }
    if (this.hET != null) {
      data['HET'] = this.hET.toJson();
    }
    if (this.mD != null) {
      data['MD'] = this.mD.toJson();
    }
    if (this.sL != null) {
      data['SL'] = this.sL.toJson();
    }
    if (this.eMB != null) {
      data['EMB'] = this.eMB.toJson();
    }
    if (this.dA != null) {
      data['DA'] = this.dA.toJson();
    }
    if (this.yW != null) {
      data['YW'] = this.yW.toJson();
    }
    if (this.wOV != null) {
      data['WOV'] = this.wOV.toJson();
    }
    if (this.other != null) {
      data['Other'] = this.other.toJson();
    }
    return data;
  }
}

class SCR {
  int qty;
  String dept;
  double value;

  SCR({this.qty, this.dept, this.value});

  SCR.fromJson(Map<String, dynamic> json) {
    qty = json['qty'];
    dept = json['dept'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['qty'] = this.qty;
    data['dept'] = this.dept;
    data['value'] = this.value;
    return data;
  }
}

class ILL {
  double value;
  String sales;

  ILL({this.value, this.sales});

  ILL.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    sales = json['sales'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['sales'] = this.sales;
    return data;
  }
}

class SalesOwner {
  ILL cS;
  ILL sD;
  ILL mD;
  ILL iLL;
  ILL sL;
  ILL dA;
  ILL yW;
  ILL other;

  SalesOwner(
      {this.cS,
      this.sD,
      this.mD,
      this.iLL,
      this.sL,
      this.dA,
      this.yW,
      this.other});

  SalesOwner.fromJson(Map<String, dynamic> json) {
    cS = json['CS'] != null ? new ILL.fromJson(json['CS']) : null;
    sD = json['SD'] != null ? new ILL.fromJson(json['SD']) : null;
    mD = json['MD'] != null ? new ILL.fromJson(json['MD']) : null;
    iLL = json['ILL'] != null ? new ILL.fromJson(json['ILL']) : null;
    sL = json['SL'] != null ? new ILL.fromJson(json['SL']) : null;
    dA = json['DA'] != null ? new ILL.fromJson(json['DA']) : null;
    yW = json['YW'] != null ? new ILL.fromJson(json['YW']) : null;
    other = json['Other'] != null ? new ILL.fromJson(json['Other']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cS != null) {
      data['CS'] = this.cS.toJson();
    }
    if (this.sD != null) {
      data['SD'] = this.sD.toJson();
    }
    if (this.mD != null) {
      data['MD'] = this.mD.toJson();
    }
    if (this.iLL != null) {
      data['ILL'] = this.iLL.toJson();
    }
    if (this.sL != null) {
      data['SL'] = this.sL.toJson();
    }
    if (this.dA != null) {
      data['DA'] = this.dA.toJson();
    }
    if (this.yW != null) {
      data['YW'] = this.yW.toJson();
    }
    if (this.other != null) {
      data['Other'] = this.other.toJson();
    }
    return data;
  }

  
}