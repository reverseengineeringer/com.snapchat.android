.class final Lbae$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbae;->a(Ljava/lang/String;Lbla;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbae;

.field final synthetic val$anrError:Lbla;


# direct methods
.method constructor <init>(Lbae;Lbla;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lbae$1;->this$0:Lbae;

    iput-object p2, p0, Lbae$1;->val$anrError:Lbla;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/snapchat/android/SnapchatActivity;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lbae$1;->val$anrError:Lbla;

    invoke-static {v0}, Laz;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
