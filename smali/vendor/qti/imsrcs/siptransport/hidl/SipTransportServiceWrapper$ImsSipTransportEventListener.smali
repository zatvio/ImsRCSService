.class public abstract Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;
.super Ljava/lang/Object;
.source "SipTransportServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImsSipTransportEventListener"
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ImsSipTransportEventListener"


# instance fields
.field protected mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 86
    const-string v0, "ImsSipTransportEventListener"

    const-string v1, ": ImsSipTransportEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method


# virtual methods
.method public final handleCmdStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userdata"    # I

    .line 102
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public final handleConfigurationChanged(Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 2
    .param p1, "config"    # Lvendor/qti/ims/rcssip/V1_0/configData;

    .line 108
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;Lvendor/qti/ims/rcssip/V1_0/configData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public final handleConfigurationChanged(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 2
    .param p1, "config"    # Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    .line 113
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public final handleServiceStatus(I)V
    .locals 2
    .param p1, "s"    # I

    .line 90
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public final handleSipTransportServiceDied()V
    .locals 2

    .line 96
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method synthetic lambda$handleCmdStatus$2$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "userdata"    # I

    .line 103
    invoke-virtual {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->onCmdStatus(II)V

    .line 104
    return-void
.end method

.method synthetic lambda$handleConfigurationChanged$3$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener(Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 0
    .param p1, "config"    # Lvendor/qti/ims/rcssip/V1_0/configData;

    .line 109
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->onConfigurationChange(Lvendor/qti/ims/rcssip/V1_0/configData;)V

    .line 110
    return-void
.end method

.method synthetic lambda$handleConfigurationChanged$4$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 0
    .param p1, "config"    # Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    .line 114
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->onConfigurationChange(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V

    .line 115
    return-void
.end method

.method synthetic lambda$handleServiceStatus$0$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener(I)V
    .locals 0
    .param p1, "s"    # I

    .line 91
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->onServiceStatus(I)V

    .line 92
    return-void
.end method

.method synthetic lambda$handleSipTransportServiceDied$1$vendor-qti-imsrcs-siptransport-hidl-SipTransportServiceWrapper$ImsSipTransportEventListener()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper$ImsSipTransportEventListener;->onSipTransportServiceDied()V

    .line 98
    return-void
.end method

.method public onCmdStatus(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "userdata"    # I

    .line 119
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssip/V1_0/configData;)V
    .locals 0
    .param p1, "configData"    # Lvendor/qti/ims/rcssip/V1_0/configData;

    .line 120
    return-void
.end method

.method public onConfigurationChange(Lvendor/qti/ims/rcssipaidlservice/ConfigData;)V
    .locals 0
    .param p1, "configData"    # Lvendor/qti/ims/rcssipaidlservice/ConfigData;

    .line 121
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 117
    return-void
.end method

.method public onSipTransportServiceDied()V
    .locals 0

    .line 118
    return-void
.end method
