.class public abstract Lat;
.super Lev;
.source "SourceFile"


# static fields
.field private static final synthetic a:Lcek$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lcfk;

    const-string v1, "ChunkOffsetBox.java"

    const-class v2, Lat;

    invoke-direct {v0, v1, v2}, Lcfk;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.ChunkOffsetBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lcfk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcfg;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v8, v1, v2}, Lcfk;->a(Ljava/lang/String;Lcen;I)Lcek$a;

    move-result-object v0

    sput-object v0, Lat;->a:Lcek$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lev;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public abstract a()[J
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lat;->a:Lcek$a;

    invoke-static {v0, p0, p0}, Lcfk;->a(Lcek$a;Ljava/lang/Object;Ljava/lang/Object;)Lcek;

    move-result-object v0

    .line 18
    invoke-static {}, Lez;->a()Lez;

    invoke-static {v0}, Lez;->a(Lcek;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[entryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lat;->a()[J

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
