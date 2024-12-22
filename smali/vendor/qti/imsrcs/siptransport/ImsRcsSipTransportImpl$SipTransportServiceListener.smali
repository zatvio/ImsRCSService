.class Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;
.super Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
.source "ImsRcsSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportServiceListener"
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SipTransportServiceListener"


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 358
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 359
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 360
    const-string p1, "SipTransportServiceListener"

    const-string v0, ": SipTransportServiceListener ctor "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method


# virtual methods
.method public onCmdStatus(II)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "userdata"    # I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onCmdStatus for status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipTransportServiceListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz p1, :cond_1

    .line 440
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/SipDelegate;

    .line 441
    .local v1, "delegate":Landroid/telephony/ims/stub/SipDelegate;
    move-object v2, v1

    check-cast v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 444
    .local v2, "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->getCreateConnectionUserData()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 446
    iget-object v3, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 447
    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$100(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;I)Landroid/util/ArraySet;

    move-result-object v3

    .line 449
    .local v3, "featureTagStateArraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/telephony/ims/FeatureTagState;>;"
    iget-object v4, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v4, v2, v3}, Landroid/telephony/ims/DelegateStateCallback;->onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V

    .line 454
    .end local v1    # "delegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v2    # "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .end local v3    # "featureTagStateArraySet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/telephony/ims/FeatureTagState;>;"
    :cond_0
    goto :goto_0

    .line 456
    :cond_1
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 3
    .param p1, "configData"    # Lvendor/qti/ims/rcssip/V1_0/configData;

    .line 417
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/SipDelegate;

    .line 418
    .local v1, "sipDelegate":Landroid/telephony/ims/stub/SipDelegate;
    move-object v2, v1

    check-cast v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 420
    .local v2, "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    invoke-virtual {v2, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->onConfigurationChange(Lvendor/qti/ims/rcssip/V1_0/configData;)V

    .line 421
    .end local v1    # "sipDelegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v2    # "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 3
    .param p1, "configData"    # Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    .line 426
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/SipDelegate;

    .line 427
    .local v1, "sipDelegate":Landroid/telephony/ims/stub/SipDelegate;
    move-object v2, v1

    check-cast v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 429
    .local v2, "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    invoke-virtual {v2, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->onConfigurationChange(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V

    .line 430
    .end local v1    # "sipDelegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v2    # "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    goto :goto_0

    .line 431
    :cond_0
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": onServiceStatus called with status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    const-string v1, "SipTransportServiceListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 370
    const-string v0, ": onServiceStatus with SERVICE_UNAVAILABLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$900()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$802(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I

    .line 372
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/SipDelegate;

    .line 373
    .local v1, "delegate":Landroid/telephony/ims/stub/SipDelegate;
    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v2, v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->sipTransport:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->clearSipTransportService()I

    .line 374
    .end local v1    # "delegate":Landroid/telephony/ims/stub/SipDelegate;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 376
    :cond_1
    if-nez p1, :cond_2

    .line 377
    const-string v0, ": onServiceStatus with SERVICE_AVAILABLE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$1000()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$802(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I

    .line 379
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$500(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)V

    .line 381
    :cond_2
    :goto_1
    return-void
.end method

.method public onSipTransportServiceDied()V
    .locals 8

    .line 385
    const-string v0, ": onSipTransportServiceDied"

    const-string v1, "SipTransportServiceListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v0, ": Cache delegate objs to restore connection once service is available"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/SipDelegate;

    .line 388
    .local v2, "delegate":Landroid/telephony/ims/stub/SipDelegate;
    const-string v3, ":  Set Delegate restore flag to true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object v3, v2

    check-cast v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 391
    .local v3, "sipDlgt":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->isSipDelegateNeedsRestoration:Z

    .line 392
    const-string v4, ": onFeatureTagRegistrationChanged (DEREGISTERED_REASON_NOT_REGISTERED)"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v4, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 396
    .local v4, "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    iget-object v5, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSupportedFts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 397
    .local v6, "deregisteredFt":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteredFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 401
    .end local v6    # "deregisteredFt":Ljava/lang/String;
    goto :goto_1

    .line 402
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v5

    .line 403
    .local v5, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v6, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v6, v5}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 404
    .end local v2    # "delegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v3    # "sipDlgt":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .end local v4    # "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .end local v5    # "regState":Landroid/telephony/ims/DelegateRegistrationState;
    goto :goto_0

    .line 406
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$1100()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$802(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I

    .line 407
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$1200()I

    move-result v1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$202(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I

    .line 409
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportServiceListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSlotId:I

    invoke-static {v0}, Lvendor/qti/imsrcs/ImsRcsService;->getImsRcsRegistrationImpl(I)Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;

    move-result-object v0

    .line 410
    .local v0, "regImpl":Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->clearRegisteringFeatureTags()V

    .line 413
    :cond_2
    return-void
.end method
