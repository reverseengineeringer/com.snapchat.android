.class final Laej$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laej;


# direct methods
.method constructor <init>(Laej;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Laej$3;->a:Laej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Laej$3;->a:Laej;

    invoke-static {v0}, Laej;->i(Laej;)Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;

    iget-object v0, p0, Laej$3;->a:Laej;

    invoke-static {v0}, Laej;->d(Laej;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/discover/model/database/table/PublisherChannelTable;->a(Landroid/content/Context;)V

    .line 765
    return-void
.end method
