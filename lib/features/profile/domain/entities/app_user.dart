class AppUser {
  AppUser({
     this.userId,
     this.email,
     this.name,
     this.givenName,
     this.familyName,
     this.nickname,
     this.lastIp,
     this.loginsCount,
     this.createdAt,
     this.updatedAt,
     this.lastLogin,
     this.emailVerified,
  });
    String? userId;
   String? email;
   String? name;
   String? givenName;
   String? familyName;
   String? nickname;
   String? lastIp;
   int? loginsCount;
   String? createdAt;
   String? updatedAt;
   String? lastLogin;
    bool? emailVerified;

   AppUser.fromJson(Map<String, dynamic> json){
    userId = json['user_id'];
    email = json['email']?? 'No email provided';
    name = json['name']?? 'No name provided';
    givenName = json['given_name']?? 'No given name provided';
    familyName = json['family_name']?? 'No family name provided';
    nickname = json['nickname']?? 'No nickname provided';
    lastIp = json['last_ip']?? 'No last IP provided';
    loginsCount = json['logins_count']?? 0;
    createdAt = json['created_at']?? 'No created at provided';
    updatedAt = json['updated_at']?? 'No updated at provided';
    lastLogin = json['last_login']?? 'No last login provided';
    emailVerified = json['email_verified']?? false;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['email'] = email;
    _data['name'] = name;
    _data['given_name'] = givenName;
    _data['family_name'] = familyName;
    _data['nickname'] = nickname;
    _data['last_ip'] = lastIp;
    _data['logins_count'] = loginsCount;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['last_login'] = lastLogin;
    _data['email_verified'] = emailVerified;
    return _data;
  }
}