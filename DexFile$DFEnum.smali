.class Ldalvik/system/DexFile$DFEnum;
.super Ljava/lang/Object;
.source "DexFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/DexFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DFEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mNameList:[Ljava/lang/String;

.field final synthetic this$0:Ldalvik/system/DexFile;


# direct methods
.method constructor <init>(Ldalvik/system/DexFile;Ldalvik/system/DexFile;)V
    .registers 4
    .param p1, "this$0"    # Ldalvik/system/DexFile;
    .param p2, "df"    # Ldalvik/system/DexFile;

    .prologue
    .line 326
    iput-object p1, p0, Ldalvik/system/DexFile$DFEnum;->this$0:Ldalvik/system/DexFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    .line 328
    invoke-static {p1}, Ldalvik/system/DexFile;->-get0(Ldalvik/system/DexFile;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ldalvik/system/DexFile;->-wrap0(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 332
    iget v0, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    iget-object v1, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 335
    invoke-virtual {p0}, Ldalvik/system/DexFile$DFEnum;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .registers 4

    .prologue
    .line 336
    iget-object v0, p0, Ldalvik/system/DexFile$DFEnum;->mNameList:[Ljava/lang/String;

    iget v1, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldalvik/system/DexFile$DFEnum;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
