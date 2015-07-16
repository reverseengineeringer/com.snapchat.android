.class final Laif$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laif;


# direct methods
.method constructor <init>(Laif;)V
    .locals 0

    .prologue
    .line 1075
    iput-object p1, p0, Laif$7;->a:Laif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Laif$7;->a:Laif;

    iget-object v0, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->b:Lcom/snapchat/android/livechat/AdlHelper$b;

    if-ne v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Laif$7;->a:Laif;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    iput-object v1, v0, Laif;->i:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 1083
    iget-object v0, p0, Laif$7;->a:Laif;

    iget-object v1, p0, Laif$7;->a:Laif;

    iget-object v1, v1, Laif;->h:Lbjc;

    invoke-virtual {v0, v1}, Laif;->a(Lbjc;)V

    .line 1085
    :cond_0
    return-void
.end method
