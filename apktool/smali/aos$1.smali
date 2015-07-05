.class final Laos$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laos;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/StoryCollection;

.field final synthetic b:Laos;


# direct methods
.method constructor <init>(Laos;Lcom/snapchat/android/model/StoryCollection;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Laos$1;->b:Laos;

    iput-object p2, p0, Laos$1;->a:Lcom/snapchat/android/model/StoryCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Laos$1;->b:Laos;

    iget-object v0, v0, Laos;->c:Lauy;

    iget-object v1, p0, Laos$1;->b:Laos;

    iget-object v1, v1, Laos;->a:Landroid/content/Context;

    iget-object v2, p0, Laos$1;->a:Lcom/snapchat/android/model/StoryCollection;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryCollection;->m()Lauz;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lauy;->a(Landroid/content/Context;Lauz;)V

    .line 92
    return-void
.end method
