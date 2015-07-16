.class final Ladg$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcp",
        "<",
        "Lcom/snapchat/android/discover/model/DSnapPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/model/DSnapPage;

.field final synthetic b:Ladg;


# direct methods
.method constructor <init>(Ladg;Lcom/snapchat/android/discover/model/DSnapPage;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Ladg$4;->b:Ladg;

    iput-object p2, p0, Ladg$4;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 216
    check-cast p1, Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {p1}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ladg$4;->a:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v1}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
