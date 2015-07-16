.class final Ladp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/snapchat/android/discover/model/DSnapPage;

.field private final b:Lcom/snapchat/android/networkmanager/DownloadPriority;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Ladp$a;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 244
    iput-object p2, p0, Ladp$a;->b:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 245
    return-void
.end method
