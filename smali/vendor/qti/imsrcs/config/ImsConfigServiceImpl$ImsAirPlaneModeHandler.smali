.class public Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImsAirPlaneModeHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isApmEnabled:Z

.field private rcsSipCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

.field private rcsSipCbEx:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;)V
    .locals 2
    .param p1, "this$0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sipExec"    # Ljava/util/concurrent/Executor;
    .param p4, "sipCb"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 600
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->rcsSipCbEx:Ljava/util/concurrent/Executor;

    .line 596
    iput-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->rcsSipCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    .line 601
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "ImsAirPlaneModeHandler = ==== ="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->context:Landroid/content/Context;

    .line 603
    iput-object p4, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->rcsSipCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    .line 604
    iput-object p3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->rcsSipCbEx:Ljava/util/concurrent/Executor;

    .line 605
    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$vendor-qti-imsrcs-config-ImsConfigServiceImpl$ImsAirPlaneModeHandler()V
    .locals 2

    .line 621
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->rcsSipCb:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    if-eqz v0, :cond_0

    .line 622
    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onAirplaneModeChange(Z)V

    goto :goto_0

    .line 624
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAirPlaneModeUpdate rcs sip listener null, Airplane Mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 609
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->access$100(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 611
    iput-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    goto :goto_0

    .line 613
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    .line 616
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsAirPlaneModeHandler APM Mode On = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->rcsSipCbEx:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 619
    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 630
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAirPlaneModeUpdate rcs executor null, Airplane mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->isApmEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_1
    return-void
.end method

.method public register()V
    .locals 2

    .line 635
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "ImsAirPlaneModeHandler APM Mode register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 637
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 639
    return-void
.end method

.method public unRegister()V
    .locals 2

    .line 642
    const-string v0, "ImsConfigServiceImpl"

    const-string v1, "ImsAirPlaneModeHandler APM Mode unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ImsAirPlaneModeHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 644
    return-void
.end method
