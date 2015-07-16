.class public final Laej$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/DSnapPage;

.field final synthetic b:Lcom/snapchat/android/discover/model/MediaState;

.field final synthetic c:Laej;


# direct methods
.method public constructor <init>(Laej;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Laej$9;->c:Laej;

    iput-object p2, p0, Laej$9;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    iput-object p3, p0, Laej$9;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Laej$9;->c:Laej;

    invoke-static {v0}, Laej;->c(Laej;)Laed;

    move-result-object v0

    iget-object v1, p0, Laej$9;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v2, p0, Laej$9;->b:Lcom/snapchat/android/discover/model/MediaState;

    invoke-virtual {v0, v1, v2}, Laed;->b(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/MediaState;)Z

    .line 421
    iget-object v0, p0, Laej$9;->c:Laej;

    invoke-virtual {v0}, Laej;->c()V

    .line 422
    return-void
.end method
