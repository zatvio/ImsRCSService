.class Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;
.super Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;
.source "ImsRcsSipTransportImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipTransportConfigUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;
    .param p2, "x1"    # Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$1;

    .line 282
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;-><init>(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChange(Z)V
    .locals 8
    .param p1, "isAirplaneModeEnabled"    # Z

    .line 331
    if-eqz p1, :cond_1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": onAirplaneModeChange Airplane mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

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

    .line 334
    .local v2, "delegate":Landroid/telephony/ims/stub/SipDelegate;
    move-object v3, v2

    check-cast v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 336
    .local v3, "sipDlgt":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    const-string v4, ": onFeatureTagRegistrationChanged (DEREGISTERING_REASON_LOSING_PDN)"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    new-instance v4, Landroid/telephony/ims/DelegateRegistrationState$Builder;

    invoke-direct {v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;-><init>()V

    .line 340
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

    .line 341
    .local v6, "deregisteringFt":Ljava/lang/String;
    const/4 v7, 0x7

    invoke-virtual {v4, v6, v7}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->addDeregisteringFeatureTag(Ljava/lang/String;I)Landroid/telephony/ims/DelegateRegistrationState$Builder;

    .line 345
    .end local v6    # "deregisteringFt":Ljava/lang/String;
    goto :goto_1

    .line 346
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/ims/DelegateRegistrationState$Builder;->build()Landroid/telephony/ims/DelegateRegistrationState;

    move-result-object v5

    .line 347
    .local v5, "regState":Landroid/telephony/ims/DelegateRegistrationState;
    iget-object v6, v3, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->mSipDelegateStateCb:Landroid/telephony/ims/DelegateStateCallback;

    invoke-interface {v6, v5}, Landroid/telephony/ims/DelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V

    .line 348
    .end local v2    # "delegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v3    # "sipDlgt":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    .end local v4    # "delegateRegState":Landroid/telephony/ims/DelegateRegistrationState$Builder;
    .end local v5    # "regState":Landroid/telephony/ims/DelegateRegistrationState;
    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method

.method public onRcsStatusReceived(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": SipTransportConfigUpdateListener -onRcsStatusReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)I

    move-result v0

    .line 289
    .local v0, "previousRcsCapStatus":I
    if-eqz p1, :cond_2

    .line 290
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$300()I

    move-result v2

    invoke-static {v1, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$202(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I

    .line 295
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$200(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 296
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$500(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)V

    .line 297
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    sget-boolean v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->reinitializeSipTransportService()V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v1, v1, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->reinitializeSipTransportService()V

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 292
    :cond_2
    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$400()I

    move-result v2

    invoke-static {v1, v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$202(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;I)I

    .line 293
    return-void
.end method

.method public onUserAgentStringReceived(Ljava/lang/String;)V
    .locals 3
    .param p1, "userAgentString"    # Ljava/lang/String;

    .line 307
    if-nez p1, :cond_0

    .line 308
    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": SipTransportConfigUpdateListener -onUserAgentStringReceived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsSipTransportImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$600(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string v0, ": SipTransportConfigUpdateListener mUserAgentValue empty"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$700(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$600(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    invoke-static {v0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$700(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": SipTransportConfigUpdateListener -updated value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    .line 319
    invoke-static {v2}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->access$600(Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl$SipTransportConfigUpdateListener;->this$0:Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/ImsRcsSipTransportImpl;->mSipDelegateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/SipDelegate;

    .line 321
    .local v1, "sipDelegate":Landroid/telephony/ims/stub/SipDelegate;
    move-object v2, v1

    check-cast v2, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;

    .line 323
    .local v2, "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    invoke-virtual {v2, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;->updateUserAgentToFw(Ljava/lang/String;)V

    .line 324
    .end local v1    # "sipDelegate":Landroid/telephony/ims/stub/SipDelegate;
    .end local v2    # "sipDelegateObj":Lvendor/qti/imsrcs/siptransport/ImsRcsSipDelegateImpl;
    goto :goto_0

    .line 326
    :cond_2
    :goto_1
    return-void
.end method
