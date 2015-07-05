.class final Lcom/snapchat/android/preview/SnapPreviewFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/preview/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/snapchat/android/preview/SnapPreviewFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V
    .locals 1

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->b:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/preview/SnapPreviewFragment;B)V
    .locals 0

    .prologue
    .line 1542
    invoke-direct {p0, p1}, Lcom/snapchat/android/preview/SnapPreviewFragment$a;-><init>(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1547
    iget-boolean v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/preview/SnapPreviewFragment$a;->b:Lcom/snapchat/android/preview/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/preview/SnapPreviewFragment;->A(Lcom/snapchat/android/preview/SnapPreviewFragment;)V

    .line 1548
    :cond_0
    return-void
.end method
