.class public Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;
.super Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryInitQmiServiceCallback;
.source "ImsConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitQmiRequestsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 574
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryInitQmiServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onQmiServiceUp$0$vendor-qti-imsrcs-config-ImsConfigServiceImpl$InitQmiRequestsListener()V
    .locals 1

    .line 581
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->queryInitCachedRequests()V

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->queryInitCachedRequests()V

    .line 587
    :cond_1
    :goto_0
    return-void
.end method

.method public onQmiServiceUp()V
    .locals 2

    .line 579
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method
