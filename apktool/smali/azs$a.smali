.class final Lazs$a;
.super Ltv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final mRequestBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ltv;-><init>()V

    .line 252
    iput-object p1, p0, Lazs$a;->mRequestBody:Ljava/lang/String;

    .line 253
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lazs$a;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string v0, ""

    return-object v0
.end method
