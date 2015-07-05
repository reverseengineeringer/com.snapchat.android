.class final Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/chat/ChatFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/chat/CashFeedItem;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ChatFragment$2;Lcom/snapchat/android/model/chat/CashFeedItem;II)V
    .locals 0

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    iput-object p2, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    iput p3, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->b:I

    iput p4, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->a:Lcom/snapchat/android/model/chat/CashFeedItem;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/chat/ChatFragment;->a(Lcom/snapchat/android/fragments/chat/ChatFragment;Lcom/snapchat/android/model/chat/CashFeedItem;)Lcom/snapchat/android/model/chat/CashFeedItem;

    .line 1214
    new-instance v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1$1;-><init>(Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 1222
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/snapchat/android/fragments/chat/ChatFragment$2$1;->d:Lcom/snapchat/android/fragments/chat/ChatFragment$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/chat/ChatFragment$2;->a:Lcom/snapchat/android/fragments/chat/ChatFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/chat/ChatFragment;->q(Lcom/snapchat/android/fragments/chat/ChatFragment;)V

    .line 1227
    return-void
.end method
