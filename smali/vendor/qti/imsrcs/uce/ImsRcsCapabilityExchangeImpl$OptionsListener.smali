.class Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;
.super Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
.source "ImsRcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsListener"
.end annotation


# instance fields
.field mOptionsRespCb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field majikNum:I

.field final synthetic this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 396
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 397
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 395
    const/4 p1, -0x1

    iput p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->majikNum:I

    .line 399
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->mOptionsRespCb:Ljava/util/HashMap;

    .line 398
    return-void
.end method


# virtual methods
.method public onCmdStatus(JI)V
    .locals 3
    .param p1, "userdata"    # J
    .param p3, "i"    # I

    .line 419
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptionsListener: onCmdStatus :: received userdata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->mOptionsRespCb:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;

    invoke-interface {v0, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 425
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->mOptionsRespCb:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public onRemoteCapabilityRequest(ILjava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "tid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p3, "remoteFTs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptionsListener: incoming Options :: received TxId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;

    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    invoke-direct {v3, v4, p1}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;I)V

    invoke-interface {v0, v1, v2, v3}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to send onRemoteCapabilityRequest Indication"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    return-void
.end method

.method public onSipResponse(JILjava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "userdata"    # J
    .param p3, "sipCode"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p5, "caps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OptionsListener: onSipResponse :: received userdata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sipCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->mOptionsRespCb:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;

    invoke-interface {v0, p3, p4, p5}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/telephony/ims/ImsException;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    .line 436
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->mOptionsRespCb:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-void
.end method

.method public setOptionsRespCb(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)J
    .locals 5
    .param p1, "cb"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;

    .line 401
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 402
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->majikNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->majikNum:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 403
    .local v1, "userData":J
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->mOptionsRespCb:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-wide v1
.end method
