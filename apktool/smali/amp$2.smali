.class final Lamp$2;
.super Lamo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamp;->a(Laka;Ljava/lang/String;Ljava/lang/Object;Laxn;Ljava/lang/String;Lcom/snapchat/android/networkmanager/DownloadPriority;Lcom/snapchat/android/networkmanager/DownloadPriority;Lamp$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lamp$a;

.field final synthetic d:Lamp;


# direct methods
.method constructor <init>(Lamp;Laka;Laxn;Ljava/lang/String;Lamp$a;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lamp$2;->d:Lamp;

    iput-object p5, p0, Lamp$2;->c:Lamp$a;

    invoke-direct {p0, p2, p3, p4}, Lamo;-><init>(Laka;Laxn;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lus;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lamp$2;->d:Lamp;

    iget-object v1, p0, Lamp$2;->c:Lamp$a;

    invoke-static {v0, v1, p1, p2}, Lamp;->a(Lamp;Lamp$a;Lus;Ljava/lang/Exception;)V

    .line 168
    return-void
.end method
