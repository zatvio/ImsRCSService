.class Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;
.super Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;
.source "ImsRcsFeatureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;


# direct methods
.method public constructor <init>(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "e"    # Ljava/util/concurrent/Executor;

    .line 217
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    .line 218
    invoke-direct {p0, p2}, Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onOptionsServiceDied()V
    .locals 0

    .line 231
    return-void
.end method

.method public onServiceStatus(I)V
    .locals 3
    .param p1, "s"    # I

    .line 223
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->access$000(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "options:onServiceStatus :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsRegistered:Z

    .line 225
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;->this$0:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    invoke-static {v0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->access$200(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)V

    .line 226
    return-void
.end method
