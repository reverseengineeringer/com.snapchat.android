.class public final enum Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/vtable/DbVirtualTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatabaseVirtualTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

.field public static final enum DSNAP_PAGE:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

.field public static final enum PUBLISHER_AND_EDITION:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;


# instance fields
.field private a:Lcom/snapchat/android/database/vtable/DbVirtualTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    const-string v1, "PUBLISHER_AND_EDITION"

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;->d()Lcom/snapchat/android/discover/model/database/vtable/PublisherAndEditionVirtualTable;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/vtable/DbVirtualTable;)V

    sput-object v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->PUBLISHER_AND_EDITION:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 20
    new-instance v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    const-string v1, "DSNAP_PAGE"

    invoke-static {}, Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;->d()Lcom/snapchat/android/discover/model/database/vtable/DSnapPageVirtualTable;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;-><init>(Ljava/lang/String;ILcom/snapchat/android/database/vtable/DbVirtualTable;)V

    sput-object v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->DSNAP_PAGE:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    sget-object v1, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->PUBLISHER_AND_EDITION:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->DSNAP_PAGE:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->$VALUES:[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/snapchat/android/database/vtable/DbVirtualTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/database/vtable/DbVirtualTable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->a:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->$VALUES:[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    return-object v0
.end method


# virtual methods
.method public final getVirtualTable()Lcom/snapchat/android/database/vtable/DbVirtualTable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->a:Lcom/snapchat/android/database/vtable/DbVirtualTable;

    return-object v0
.end method
