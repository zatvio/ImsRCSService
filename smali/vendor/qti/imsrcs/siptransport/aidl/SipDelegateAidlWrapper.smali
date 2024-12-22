.class public Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;
.super Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;
.source "SipDelegateAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field private mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

.field private mAidlSipConnectionListener:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;

.field private mAidlSubscriberAssociatedUri:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    .line 45
    new-instance v1, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;-><init>(Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnectionListener:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;

    .line 47
    const-string v0, "SipDelegateAidlWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->LOG_TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->setAidlSubscriberAssociatedUri([Ljava/lang/String;)V

    return-void
.end method

.method private convertSipMsgToHidlMsg(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;)Lvendor/qti/ims/rcssipaidlservice/MessageData;
    .locals 10
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;

    .line 148
    new-instance v0, Lvendor/qti/ims/rcssipaidlservice/MessageData;

    invoke-direct {v0}, Lvendor/qti/ims/rcssipaidlservice/MessageData;-><init>()V

    .line 150
    .local v0, "msg":Lvendor/qti/ims/rcssipaidlservice/MessageData;
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v1, "keyValueStringArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;>;"
    new-instance v2, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    invoke-direct {v2}, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;-><init>()V

    .line 154
    .local v2, "outboundProxyData":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    const/16 v3, 0xfa1

    iput v3, v2, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    .line 155
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getOutboundProxy()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    .line 156
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v3, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    invoke-direct {v3}, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;-><init>()V

    .line 161
    .local v3, "remotePortData":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    const/16 v4, 0xfa2

    iput v4, v3, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    .line 162
    nop

    .line 163
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getRemotePort()I

    move-result v4

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    .line 164
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v4, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    invoke-direct {v4}, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;-><init>()V

    .line 169
    .local v4, "protocolData":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    const/16 v5, 0xfa3

    iput v5, v4, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    .line 170
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getProtocol()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    .line 171
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v5, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    invoke-direct {v5}, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;-><init>()V

    .line 176
    .local v5, "messageTypeData":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    const/16 v6, 0xfa4

    iput v6, v5, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    .line 177
    nop

    .line 178
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getMessageType()I

    move-result v6

    .line 177
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    .line 179
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v6, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    invoke-direct {v6}, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;-><init>()V

    .line 183
    .local v6, "callIdData":Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    const/16 v7, 0xfa5

    iput v7, v6, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->key:I

    .line 184
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;->value:Ljava/lang/String;

    .line 185
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    .line 189
    .local v7, "tempKeyValueArr":[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 190
    iput-object v7, v0, Lvendor/qti/ims/rcssipaidlservice/MessageData;->data:[Lvendor/qti/ims/rcssipaidlservice/KeyValuePairStringType;

    .line 191
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v8

    iput-object v8, v0, Lvendor/qti/ims/rcssipaidlservice/MessageData;->bufferData:[B

    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendMessage final buffersize : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lvendor/qti/ims/rcssipaidlservice/MessageData;->bufferData:[B

    array-length v9, v9

    .line 197
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 196
    const-string v9, "SipDelegateAidlWrapper"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v0
.end method

.method private convertSipMsgToSessionData(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)[Lvendor/qti/ims/rcssipaidlservice/SessionData;
    .locals 4
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "peerInfo"    # I

    .line 204
    const-string v0, ": convertSipMsgToSessionData"

    const-string v1, "SipDelegateAidlWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Lvendor/qti/ims/rcssipaidlservice/SessionData;

    .line 207
    .local v0, "sessionVec":[Lvendor/qti/ims/rcssipaidlservice/SessionData;
    const-string v2, ": convertSipMsgToSessionData - msg has sdp body"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v2, Lvendor/qti/ims/rcssipaidlservice/SessionData;

    invoke-direct {v2}, Lvendor/qti/ims/rcssipaidlservice/SessionData;-><init>()V

    .line 209
    .local v2, "sessData":Lvendor/qti/ims/rcssipaidlservice/SessionData;
    iput p2, v2, Lvendor/qti/ims/rcssipaidlservice/SessionData;->peer:I

    .line 210
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getSdpContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/qti/ims/rcssipaidlservice/SessionData;->data:Ljava/lang/String;

    .line 213
    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 214
    const-string v3, ": convertSipMsgToSessionData - before calling native updateSessionContent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v0
.end method

.method private setAidlSubscriberAssociatedUri([Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # [Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSubscriberAssociatedUri:[Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getAidlSipConnectionListener()Lvendor/qti/ims/rcssipaidlservice/ISipConnectionListener;
    .locals 2

    .line 59
    const-string v0, "SipDelegateAidlWrapper"

    const-string v1, ": getHidlSipConnectionListener invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnectionListener:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;

    return-object v0
.end method

.method public getAidlSubscriberAssociatedUri()[Ljava/lang/String;
    .locals 2

    .line 72
    const-string v0, "SipDelegateAidlWrapper"

    const-string v1, ": getAidlSubscriberAssociatedUri invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSubscriberAssociatedUri:[Ljava/lang/String;

    return-object v0
.end method

.method public getHidlSipConnection()Lvendor/qti/ims/rcssipaidlservice/ISipConnection;
    .locals 1

    .line 55
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    return-object v0
.end method

.method public handleActiveSessionStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 125
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    if-eqz v0, :cond_0

    .line 127
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lvendor/qti/ims/rcssipaidlservice/ISipConnection;->setStatus(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleCloseTransaction(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 77
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    invoke-interface {v0, p1, p2}, Lvendor/qti/ims/rcssipaidlservice/ISipConnection;->closeTransaction(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleHoldSessionStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 115
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    if-eqz v0, :cond_0

    .line 117
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lvendor/qti/ims/rcssipaidlservice/ISipConnection;->setStatus(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 122
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleInactiveSessionStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 135
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    if-eqz v0, :cond_0

    .line 137
    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lvendor/qti/ims/rcssipaidlservice/ISipConnection;->setStatus(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleSendMessage(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 3
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p3, "userData"    # I

    .line 87
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->convertSipMsgToHidlMsg(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;)Lvendor/qti/ims/rcssipaidlservice/MessageData;

    move-result-object v0

    .line 89
    .local v0, "msg":Lvendor/qti/ims/rcssipaidlservice/MessageData;
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    const-string v1, "SipDelegateAidlWrapper"

    const-string v2, "sendMessage::before calling hidl sendMsg API"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    invoke-interface {v1, v0, p3}, Lvendor/qti/ims/rcssipaidlservice/ISipConnection;->sendMessage(Lvendor/qti/ims/rcssipaidlservice/MessageData;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleUpdateSession(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 3
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "peerInfo"    # I

    .line 100
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getSdpContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "callId":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->convertSipMsgToSessionData(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)[Lvendor/qti/ims/rcssipaidlservice/SessionData;

    move-result-object v1

    .line 105
    .local v1, "sessionContent":[Lvendor/qti/ims/rcssipaidlservice/SessionData;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    if-eqz v2, :cond_1

    .line 107
    :try_start_0
    invoke-interface {v2, v0, v1}, Lvendor/qti/ims/rcssipaidlservice/ISipConnection;->updateSessionContent(Ljava/lang/String;[Lvendor/qti/ims/rcssipaidlservice/SessionData;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 112
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public setAidlSipConnection(Lvendor/qti/ims/rcssipaidlservice/ISipConnection;)V
    .locals 0
    .param p1, "iSipConnection"    # Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    .line 64
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mAidlSipConnection:Lvendor/qti/ims/rcssipaidlservice/ISipConnection;

    .line 65
    return-void
.end method
