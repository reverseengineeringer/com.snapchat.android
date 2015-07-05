.class public final Lbdj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCaptureContext:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

.field public final mMediabryo:Laim;


# direct methods
.method public constructor <init>(Laim;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V
    .locals 1
    .param p1    # Laim;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/util/eventbus/SnapCaptureContext;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    iput-object v0, p0, Lbdj;->mMediabryo:Laim;

    .line 24
    invoke-static {p2}, Lck;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    iput-object v0, p0, Lbdj;->mCaptureContext:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    .line 25
    return-void
.end method
