.class public Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;
.super Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;
.source "SipDelegateHidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;
    }
.end annotation


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field private mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

.field private mHidlSipConnectionListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;

.field private mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

.field private mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    .line 48
    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    .line 49
    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    .line 50
    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnectionListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;

    .line 52
    const-string v0, "SipDelegateHidlWrapper"

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->LOG_TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private convertSipMsgToHidlMsg(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;)Lvendor/qti/ims/rcssip/V1_0/messageData;
    .locals 10
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;

    .line 197
    new-instance v0, Lvendor/qti/ims/rcssip/V1_0/messageData;

    invoke-direct {v0}, Lvendor/qti/ims/rcssip/V1_0/messageData;-><init>()V

    .line 199
    .local v0, "msg":Lvendor/qti/ims/rcssip/V1_0/messageData;
    new-instance v1, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    invoke-direct {v1}, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;-><init>()V

    .line 201
    .local v1, "outboundProxyData":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    const/16 v2, 0xfa1

    iput v2, v1, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    .line 202
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getOutboundProxy()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    .line 203
    iget-object v2, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v2, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    invoke-direct {v2}, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;-><init>()V

    .line 207
    .local v2, "remotePortData":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    const/16 v3, 0xfa2

    iput v3, v2, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    .line 208
    nop

    .line 209
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getRemotePort()I

    move-result v3

    .line 208
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    .line 210
    iget-object v3, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v3, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    invoke-direct {v3}, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;-><init>()V

    .line 214
    .local v3, "protocolData":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    const/16 v4, 0xfa3

    iput v4, v3, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    .line 215
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getProtocol()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    .line 216
    iget-object v4, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v4, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    invoke-direct {v4}, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;-><init>()V

    .line 220
    .local v4, "messageTypeData":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    const/16 v5, 0xfa4

    iput v5, v4, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    .line 221
    nop

    .line 222
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getMessageType()I

    move-result v5

    .line 221
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    .line 223
    iget-object v5, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v5, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;

    invoke-direct {v5}, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;-><init>()V

    .line 226
    .local v5, "callIdData":Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;
    const/16 v6, 0xfa5

    iput v6, v5, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->key:I

    .line 227
    invoke-virtual {p2}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lvendor/qti/ims/rcssip/V1_0/keyValuePairStringType;->value:Ljava/lang/String;

    .line 228
    iget-object v6, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->toEncodedMessage()[B

    move-result-object v6

    .line 232
    .local v6, "messageByteArray":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_0

    .line 233
    iget-object v8, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->bufferData:Ljava/util/ArrayList;

    aget-byte v9, v6, v7

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 235
    .end local v7    # "i":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendMessage copied buffersize "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v6

    .line 236
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  final buffersize : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lvendor/qti/ims/rcssip/V1_0/messageData;->bufferData:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 235
    const-string v8, "SipDelegateHidlWrapper"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v0
.end method

.method private convertSipMsgToSessionData(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "peerInfo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/sessionData;",
            ">;"
        }
    .end annotation

    .line 245
    const-string v0, ": convertSipMsgToSessionData"

    const-string v1, "SipDelegateHidlWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    .local v0, "sessionVec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/sessionData;>;"
    const-string v2, ": convertSipMsgToSessionData - msg has sdp body"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v2, Lvendor/qti/ims/rcssip/V1_0/sessionData;

    invoke-direct {v2}, Lvendor/qti/ims/rcssip/V1_0/sessionData;-><init>()V

    .line 250
    .local v2, "sessData":Lvendor/qti/ims/rcssip/V1_0/sessionData;
    iput p2, v2, Lvendor/qti/ims/rcssip/V1_0/sessionData;->peer:I

    .line 251
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getSdpContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lvendor/qti/ims/rcssip/V1_0/sessionData;->data:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v3, ": convertSipMsgToSessionData - before calling native updateSessionContent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-object v0
.end method


# virtual methods
.method public getHidlSipConnection()Lvendor/qti/ims/rcssip/V1_2/ISipConnection;
    .locals 1

    .line 59
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    return-object v0
.end method

.method public getHidlSipConnectionListener()Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener;
    .locals 2

    .line 71
    const-string v0, "SipDelegateHidlWrapper"

    const-string v1, ": getHidlSipConnectionListener invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnectionListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;

    return-object v0
.end method

.method public getHidlSipConnection_1_0()Lvendor/qti/ims/rcssip/V1_0/ISipConnection;
    .locals 1

    .line 67
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    return-object v0
.end method

.method public getHidlSipConnection_1_1()Lvendor/qti/ims/rcssip/V1_1/ISipConnection;
    .locals 1

    .line 63
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    return-object v0
.end method

.method public handleActiveSessionStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 174
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lvendor/qti/ims/rcssip/V1_2/ISipConnection;->setStatus(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleCloseTransaction(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 88
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    invoke-interface {v0, p1, p2}, Lvendor/qti/ims/rcssip/V1_2/ISipConnection;->closeTransaction(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_2

    .line 94
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    if-eqz v0, :cond_1

    .line 96
    :try_start_1
    invoke-interface {v0, p1, p2}, Lvendor/qti/ims/rcssip/V1_1/ISipConnection;->closeTransaction(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 100
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    if-eqz v0, :cond_2

    .line 102
    :try_start_2
    invoke-interface {v0, p1, p2}, Lvendor/qti/ims/rcssip/V1_0/ISipConnection;->closeTransaction(Ljava/lang/String;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    goto :goto_2

    .line 103
    :catch_2
    move-exception v0

    .line 104
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-void
.end method

.method public handleHoldSessionStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 164
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lvendor/qti/ims/rcssip/V1_2/ISipConnection;->setStatus(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleInactiveSessionStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "featureTag"    # Ljava/lang/String;
    .param p2, "userData"    # I

    .line 184
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    if-eqz v0, :cond_0

    .line 186
    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v0, p1, v1, p2}, Lvendor/qti/ims/rcssip/V1_2/ISipConnection;->setStatus(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public handleSendMessage(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 4
    .param p1, "sipMessage"    # Landroid/telephony/ims/SipMessage;
    .param p2, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p3, "userData"    # I

    .line 110
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->convertSipMsgToHidlMsg(Landroid/telephony/ims/SipMessage;Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;)Lvendor/qti/ims/rcssip/V1_0/messageData;

    move-result-object v0

    .line 112
    .local v0, "msg":Lvendor/qti/ims/rcssip/V1_0/messageData;
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    const-string v2, "sendMessage::before calling hidl sendMsg API"

    const-string v3, "SipDelegateHidlWrapper"

    if-eqz v1, :cond_0

    .line 114
    :try_start_0
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    invoke-interface {v1, v0, p3}, Lvendor/qti/ims/rcssip/V1_2/ISipConnection;->sendMessage(Lvendor/qti/ims/rcssip/V1_0/messageData;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_2

    .line 119
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    if-eqz v1, :cond_1

    .line 121
    :try_start_1
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    invoke-interface {v1, v0, p3}, Lvendor/qti/ims/rcssip/V1_1/ISipConnection;->sendMessage(Lvendor/qti/ims/rcssip/V1_0/messageData;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 126
    :cond_1
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    if-eqz v1, :cond_2

    .line 128
    :try_start_2
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    invoke-interface {v1, v0, p3}, Lvendor/qti/ims/rcssip/V1_0/ISipConnection;->sendMessage(Lvendor/qti/ims/rcssip/V1_0/messageData;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    goto :goto_2

    .line 130
    :catch_2
    move-exception v1

    .line 131
    .restart local v1    # "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-void
.end method

.method public handleUpdateSession(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)V
    .locals 3
    .param p1, "msgParser"    # Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;
    .param p2, "peerInfo"    # I

    .line 137
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getSdpContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;->getCallID()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "callId":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->convertSipMsgToSessionData(Lvendor/qti/imsrcs/siptransport/ImsSipMessageParser;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    .local v1, "sessionContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/sessionData;>;"
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    if-eqz v2, :cond_1

    .line 144
    :try_start_0
    invoke-interface {v2, v0, v1}, Lvendor/qti/ims/rcssip/V1_2/ISipConnection;->updateSessionContent(Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 147
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_2

    .line 148
    :cond_1
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    if-eqz v2, :cond_2

    .line 150
    :try_start_1
    invoke-interface {v2, v0, v1}, Lvendor/qti/ims/rcssip/V1_1/ISipConnection;->updateSessionContent(Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v2

    .line 152
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 153
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_2

    .line 154
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    if-eqz v2, :cond_3

    .line 156
    :try_start_2
    invoke-interface {v2, v0, v1}, Lvendor/qti/ims/rcssip/V1_0/ISipConnection;->updateSessionContent(Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    goto :goto_2

    .line 157
    :catch_2
    move-exception v2

    .line 158
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    return-void
.end method

.method public setHidlSipConnection(Lvendor/qti/ims/rcssip/V1_0/ISipConnection;)V
    .locals 0
    .param p1, "iSipConnection"    # Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    .line 84
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_0:Lvendor/qti/ims/rcssip/V1_0/ISipConnection;

    .line 85
    return-void
.end method

.method public setHidlSipConnection(Lvendor/qti/ims/rcssip/V1_1/ISipConnection;)V
    .locals 0
    .param p1, "iSipConnection"    # Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    .line 80
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection_1_1:Lvendor/qti/ims/rcssip/V1_1/ISipConnection;

    .line 81
    return-void
.end method

.method public setHidlSipConnection(Lvendor/qti/ims/rcssip/V1_2/ISipConnection;)V
    .locals 0
    .param p1, "iSipConnection"    # Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    .line 76
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mHidlSipConnection:Lvendor/qti/ims/rcssip/V1_2/ISipConnection;

    .line 77
    return-void
.end method
