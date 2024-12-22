.class Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;
.super Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
.source "ImsRcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceListener"
.end annotation


# instance fields
.field date:Ljava/util/Date;

.field magicNum:I

.field publishCbList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field subscribeCbList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 180
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 181
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 178
    const/4 p1, -0x1

    iput p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->magicNum:I

    .line 224
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    .line 226
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    .line 228
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->date:Ljava/util/Date;

    .line 182
    return-void
.end method

.method private isReqAvailabilityFetch(J)Z
    .locals 4
    .param p1, "userData"    # J

    .line 247
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    .line 248
    .local v0, "data":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private parsetReasonHeader(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .param p1, "reasonHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "result":I
    const-string v1, ""

    .line 334
    .local v1, "resultText":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 336
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "reasons":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 338
    .local v5, "data":Ljava/lang/String;
    const-string v6, "cause="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "="

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    .line 339
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "cause":[Ljava/lang/String;
    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .end local v6    # "cause":[Ljava/lang/String;
    :cond_0
    const-string v6, "text="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "text":[Ljava/lang/String;
    aget-object v1, v6, v8

    .line 337
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "text":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "reasons":[Ljava/lang/String;
    :cond_2
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public getUserData(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)J
    .locals 4
    .param p1, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 231
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->magicNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->magicNum:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 232
    .local v0, "userData":J
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-wide v0
.end method

.method public getUserData(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;Z)J
    .locals 4
    .param p1, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .param p2, "isAvailabilityFetch"    # Z

    .line 237
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->magicNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->magicNum:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 238
    .local v0, "userData":J
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    .line 239
    if-eqz p2, :cond_0

    .line 240
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 242
    :cond_0
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-wide v0
.end method

.method public onCmdStatusError(JI)V
    .locals 2
    .param p1, "userdata"    # J
    .param p3, "i"    # I

    .line 253
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    invoke-interface {v0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V

    .line 256
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-interface {v0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V

    .line 261
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    return-void

    .line 266
    :cond_1
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 267
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onNotifyCapabilitiesUpdate(JLjava/util/List;)V
    .locals 3
    .param p1, "userdata"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 353
    .local p3, "PidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotifyCapabilitiesUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNotifyCapabilitiesUpdate found cb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-interface {v0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 363
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_0
    :goto_0
    return-void
.end method

.method public onPublishUpdate(JILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userdata"    # J
    .param p3, "code"    # I
    .param p4, "ReasonPhrase"    # Ljava/lang/String;
    .param p5, "reasonHeader"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPublishUpdate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :try_start_0
    invoke-direct {p0, p5}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->parsetReasonHeader(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 321
    .local v0, "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 322
    invoke-virtual {v1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 323
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 325
    .local v1, "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-interface {v2, v1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v0    # "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to send onPublishUpdate Indication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .locals 3
    .param p1, "aospPublishTriggerType"    # I

    .line 204
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-boolean v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->isServiceAvable:Z

    if-eqz v0, :cond_0

    .line 206
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to send Publish Trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    goto :goto_1

    .line 211
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iput p1, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    .line 213
    :goto_1
    return-void
.end method

.method public onResourceTerminated(JLjava/util/List;)V
    .locals 2
    .param p1, "userdata"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 367
    .local p3, "uriTerminatedReason":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/String;>;>;"
    invoke-direct {p0, p1, p2}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->isReqAvailabilityFetch(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-interface {v0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onResourceTerminated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 378
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 3
    .param p1, "s"    # I

    .line 186
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->isServiceAvable:Z

    .line 187
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-boolean v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->isServiceAvable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 191
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    goto :goto_2

    .line 192
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 195
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget v1, v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    goto :goto_3

    .line 197
    .local v0, "e":Landroid/telephony/ims/ImsException;
    :goto_2
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to send Publish Trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_1
    :goto_3
    return-void
.end method

.method public onSipResponse(JILjava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "userdata"    # J
    .param p3, "code"    # I
    .param p4, "ReasonPhrase"    # Ljava/lang/String;
    .param p5, "reasonHeader"    # Ljava/lang/String;
    .param p6, "retryAfter"    # I

    .line 271
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSipResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "onSipResponse found cb"

    if-eqz v0, :cond_1

    .line 275
    :try_start_1
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lez v0, :cond_0

    .line 277
    invoke-direct {p0, p5}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->parsetReasonHeader(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 278
    .local v0, "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v2, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 279
    invoke-virtual {v2, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 280
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 282
    .local v1, "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    invoke-interface {v2, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    .line 283
    .end local v0    # "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_0

    .line 284
    .end local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_0
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 285
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    move-object v1, v0

    .line 287
    .restart local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    .line 289
    :goto_0
    return-void

    .line 291
    .end local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->publishCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lez v0, :cond_2

    .line 295
    invoke-direct {p0, p5}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->parsetReasonHeader(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 296
    .restart local v0    # "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v2, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 297
    invoke-virtual {v2, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 298
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v1

    .line 300
    .restart local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-interface {v2, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    .line 302
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    nop

    .end local v0    # "reasonHeaderDetails":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    goto :goto_1

    .line 304
    .end local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_2
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V

    .line 305
    invoke-virtual {v0, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object v0

    move-object v1, v0

    .line 307
    .restart local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    :goto_1
    return-void

    .line 313
    .end local v1    # "sipInfo":Landroid/telephony/ims/SipDetails;
    :cond_3
    goto :goto_2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 314
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_2
    return-void
.end method

.method public onTerminated(JLjava/lang/String;J)V
    .locals 2
    .param p1, "userdata"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "retryAfterMilliseconds"    # J

    .line 382
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-interface {v0, p3, p4, p5}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onTerminated(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 389
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->subscribeCbList:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public onUnpublish()V
    .locals 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-interface {v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to send Unpublish Indication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method
