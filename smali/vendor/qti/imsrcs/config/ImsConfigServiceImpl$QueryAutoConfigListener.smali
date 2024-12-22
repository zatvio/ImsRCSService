.class public Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;
.super Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAcsCallback;
.source "ImsConfigServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryAutoConfigListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 559
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    invoke-direct {p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAcsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRcsInit$0$vendor-qti-imsrcs-config-ImsConfigServiceImpl$QueryAutoConfigListener()V
    .locals 1

    .line 564
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mAidlImsConfig:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->queryAcsConfiguration()V

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mHidlImsConfig:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->queryAcsConfiguration()V

    .line 570
    :cond_1
    :goto_0
    return-void
.end method

.method public onRcsInit()V
    .locals 2

    .line 563
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v0, v0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->mConfigExec:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method
