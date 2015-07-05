.class final Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 1

    .prologue
    .line 473
    iput-object p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;->b:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;B)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$a;->b:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->i(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    .line 480
    :cond_0
    return-void
.end method
