.class public final synthetic Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Z

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;Ljava/util/ArrayList;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$1:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$2:Z

    iput-wide p4, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$0:Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$1:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$2:Z

    iget-wide v3, p0, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener$$ExternalSyntheticLambda13;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->lambda$handleCapInfo$6$vendor-qti-imsrcs-uce-ImsPresCapEventListener(Ljava/util/ArrayList;ZJ)V

    return-void
.end method
