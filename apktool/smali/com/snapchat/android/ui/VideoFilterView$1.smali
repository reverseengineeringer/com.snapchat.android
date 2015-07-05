.class final Lcom/snapchat/android/ui/VideoFilterView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/VideoFilterView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/VideoFilterView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/VideoFilterView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/snapchat/android/ui/VideoFilterView$1;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/snapchat/android/ui/VideoFilterView$1;->a:Lcom/snapchat/android/ui/VideoFilterView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/VideoFilterView;->b()V

    .line 306
    return-void
.end method
