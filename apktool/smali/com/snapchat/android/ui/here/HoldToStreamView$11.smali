.class final Lcom/snapchat/android/ui/here/HoldToStreamView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 822
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->k:Lare;

    invoke-virtual {v0}, Lare;->b()V

    .line 829
    return-void
.end method
