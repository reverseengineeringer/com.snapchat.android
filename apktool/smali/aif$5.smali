.class final Laif$5;
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
    .line 644
    iput-object p1, p0, Laif$5;->a:Laif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Laif$5;->a:Laif;

    iget-object v0, v0, Laif;->a:Laih$a;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->CONNECTION_LOST:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Laih$a;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 648
    iget-object v0, p0, Laif$5;->a:Laif;

    const/4 v1, 0x0

    iput-object v1, v0, Laif;->e:Ljava/lang/Runnable;

    .line 649
    return-void
.end method
