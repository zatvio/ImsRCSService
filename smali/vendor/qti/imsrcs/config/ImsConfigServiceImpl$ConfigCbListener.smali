.class Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;
.super Lvendor/qti/imsrcs/config/ImsConfigCbListener;
.source "ImsConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigCbListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "mConfigExec"    # Ljava/util/concurrent/Executor;

    .line 518
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 519
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 521
    return-void
.end method


# virtual methods
.method public onAutoConfigurationErrorReceivedCb(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorStr"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->access$000(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V

    .line 544
    return-void
.end method

.method public onAutoConfigurationReceivedCb([BZ)V
    .locals 2
    .param p1, "autoConfigXml"    # [B
    .param p2, "isCompressed"    # Z

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "passing AutoConfigurationReceived to FW: xmlSize:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isCompressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/IImsConfig;->notifyRcsAutoConfigurationReceived([BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 538
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onCommandStatusCb(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method public onPreConfigReceivedCb([B)V
    .locals 1
    .param p1, "preconfigxml"    # [B

    .line 548
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->notifyPreProvisioningReceived([B)V

    .line 549
    return-void
.end method

.method public onWrapperReset()V
    .locals 1

    .line 553
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$ConfigCbListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->deInit()V

    .line 554
    return-void
.end method
